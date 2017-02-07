const gulp = require('gulp');
const build = require('./build.js');

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

  build.depsJS(callback, roots);
}

/**
 * @param {boolean=} opt_dev
 * @returns {*}
 */
function compileJS(opt_dev) {
  const inputs = [
    'node_modules/google-closure-library/closure/goog/**.js',
    '!node_modules/google-closure-library/closure/goog/**_test.js',
    'node_modules/clulib/lib/**.js',
    '../Components/**.js',
    'src/t3demo/**.js'
  ];
  const externs = [
    'node_modules/externs/picturefill/picturefill-3.0.2.js',
    'node_modules/externs/swiper/swiper-3.4.1.js',
    'node_modules/externs/systemjs/systemjs-0.19.41.js'
  ];
  const entryPoint = 't3demo.App';
  const destinationFolder = './';
  const sourceMapUrl = '/fileadmin/Resources/Public/JavaScripts/app.min.js.map';

  return build.compileJS(inputs, externs, entryPoint, destinationFolder, opt_dev, sourceMapUrl);
}