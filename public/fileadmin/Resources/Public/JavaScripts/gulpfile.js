const path = require('path');
const gulp = require('gulp');
const exec = require('child_process').exec;
const sourcemaps = require('gulp-sourcemaps');
const closureCompiler = require('google-closure-compiler').gulp();

gulp.task('js-deps', function (callback) {
  return depsJS(callback);
});

gulp.task('js-compile-prod', function () {
  return compileJS();
});

gulp.task('js-compile-dev', function () {
  return compileJS(true);
});

/**
 * @param {Function} callback
 */
function depsJS(callback) {
  const roots = {
    './': '../../../..',
    '../Components': '../../../../../Components'
  };

  depsJSHelper(callback, roots);
}

/**
 * @param {boolean=} opt_dev
 * @returns {*}
 */
function compileJS(opt_dev) {
  const inputs = [
    path.normalize('node_modules/google-closure-library/closure/goog/**.js'),
    path.normalize('!node_modules/google-closure-library/closure/goog/**_test.js'),
    path.normalize('node_modules/clulib/lib/**.js'),
    path.normalize('../Components/**.js'),
    path.normalize('src/t3demo/**.js')
  ];
  const externs = [
    path.normalize('node_modules/externs/picturefill/picturefill-3.0.2.js'),
    path.normalize('node_modules/externs/swiper/swiper-3.4.1.js'),
    path.normalize('node_modules/externs/systemjs/systemjs-0.19.41.js')
  ];
  const entryPoint = 't3demo.App';
  const destinationFolder = path.normalize('./');
  const sourceMapUrl = '/fileadmin/Resources/Public/JavaScripts/app.min.js.map';

  return compileJSHelper(inputs, externs, entryPoint, destinationFolder, opt_dev, sourceMapUrl);
}

/**
 * @param {Function} callback
 * @param {Object<string, string>} roots
 * @param {string=} opt_nodeModulesFolder
 * @param {string=} opt_outputFolder
 */
function depsJSHelper(callback, roots, opt_nodeModulesFolder, opt_outputFolder) {
  const nodeModulesFolder = opt_nodeModulesFolder || './node_modules/';
  const outputFolder = opt_outputFolder || './';
  const depswriter = path.normalize(nodeModulesFolder + '/google-closure-library/closure/bin/build/depswriter.py');

  let command = 'python ' + depswriter;

  for (let key in roots) {
    if (roots.hasOwnProperty(key))
      command += ' --root_with_prefix="' + path.normalize(key) + ' ' + path.normalize(roots[key]) + '"';
  }

  command += ' > ' + path.normalize(outputFolder + 'app-deps.js');

  console.log(command);

  exec(command, function (err) {
    callback(err);
  });
}

/**
 * @param {Array<string>} inputs
 * @param {Array<string>} externs
 * @param {string} entryPoint
 * @param {string} destinationFolder
 * @param {boolean=} opt_dev
 * @param {string=} opt_sourceMapUrl
 * @returns {*}
 */
function compileJSHelper(inputs, externs, entryPoint, destinationFolder, opt_dev, opt_sourceMapUrl) {
  const development = opt_dev || false;

  const options = {
    js: inputs,
    externs: externs,
    entry_point: entryPoint,
    language_in: 'ECMASCRIPT6',
    language_out: 'ECMASCRIPT5',
    compilation_level: 'ADVANCED',
    warning_level: 'VERBOSE',
    define: [],
    assume_function_wrapper: 'true',
    output_wrapper: '(function(){%output%})();',
    js_output_file: 'app.min.js'
  };

  if (development) {
    options.define.push(
        'goog.DEBUG=true'
    );

    const sourceMapOptions = {};

    if (opt_sourceMapUrl != null)
      sourceMapOptions.sourceMappingURL = function () {
        return opt_sourceMapUrl;
      };

    return closureCompiler(options)
        .src()
        .pipe(sourcemaps.init())
        .pipe(sourcemaps.write(path.normalize('/'), sourceMapOptions))
        .pipe(gulp.dest(destinationFolder));
  }
  else {
    options.define.push(
        'goog.DEBUG=false'
    );

    return closureCompiler(options)
        .src()
        .pipe(gulp.dest(destinationFolder));
  }
}