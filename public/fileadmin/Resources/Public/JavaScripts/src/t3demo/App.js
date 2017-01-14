goog.provide('t3demo.App');

goog.require('clulib.cm.ComponentManager');

goog.require('t3demo.net.libs');
goog.require('t3demo.components');

/**
 * @constructor
 */
t3demo.App = function () {
  /**
   * @type {clulib.cm.ComponentManager}
   * @private
   */
  this.manager_ = new clulib.cm.ComponentManager();

  this.manager_.addComponentMap(t3demo.components.collection);

  SystemJS.config({
    baseURL: 'fileadmin/Resources/Public/JavaScripts'
  });
};

/**
 * @returns {Promise}
 */
t3demo.App.prototype.loadDefaultLibs = function () {
  return Promise.all([
    t3demo.net.libs.loadPicturefill()
  ]);
};

/**
 * @param {Array} libs
 * @returns {Promise}
 */
t3demo.App.prototype.init = function (libs) {
  /**
   * @type {Function}
   */
  const picturefill = libs[0];
  picturefill();

  return this.manager_.decorate();
};

/**
 * @type {t3demo.App}
 */
const app = new t3demo.App();
app.loadDefaultLibs()
    .then(libs => app.init(libs));