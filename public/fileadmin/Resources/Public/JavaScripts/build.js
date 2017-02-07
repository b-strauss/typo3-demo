'use strict';

const path = require('path');
const gulp = require('gulp');
const exec = require('child_process').exec;
const sourcemaps = require('gulp-sourcemaps');
const closureCompiler = require('google-closure-compiler').gulp();

/**
 * @param {Function} callback
 * @param {Object<string, string>} roots
 * @param {string=} opt_nodeModulesFolder
 * @param {string=} opt_outputFolder
 */
function depsJS(callback, roots, opt_nodeModulesFolder, opt_outputFolder) {
  const nodeModulesFolder = opt_nodeModulesFolder || './node_modules/';
  const outputFolder = opt_outputFolder || './';
  const depswriter = path.normalize(nodeModulesFolder + '/google-closure-library/closure/bin/build/depswriter.py');

  let command = 'python ' + depswriter;

  for (let key in roots) {
    if (roots.hasOwnProperty(key))
      command += ' --root_with_prefix="' + path.normalize(key) + ' ' + path.normalize(roots[key]) + '"';
  }

  command += ' > ' + path.normalize(outputFolder + 'app-deps.js');

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
function compileJS(inputs, externs, entryPoint, destinationFolder, opt_dev, opt_sourceMapUrl) {
  const development = opt_dev || false;

  destinationFolder = path.normalize(destinationFolder);

  const options = {
    js: inputs.map(input => path.normalize(input)),
    externs: externs.map(extern => path.normalize(extern)),
    entry_point: entryPoint,
    language_in: 'ECMASCRIPT6',
    language_out: 'ECMASCRIPT5_STRICT',
    compilation_level: 'ADVANCED',
    warning_level: 'VERBOSE',
    define: [],
    assume_function_wrapper: 'true',
    rewrite_polyfills: 'true',
    // https://github.com/google/closure-compiler/wiki/Warnings
    jscomp_error: [
      'accessControls',
      'const',
      'missingProvide',
      'missingRequire',
      'missingReturn',
      'useOfGoogBase'
    ],
    jscomp_warning: [
      'checkDebuggerStatement',
      'checkRegExp',
      'deprecatedAnnotations',
      'deprecated',
      'extraRequire',
      'inferredConstCheck'
    ],
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

module.exports = {
  depsJS: depsJS,
  compileJS: compileJS,
};