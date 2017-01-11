goog.provide('t3demo.components.Article');

goog.require('clulib.cm.Component');

/**
 * @constructor
 * @extends {clulib.cm.Component}
 */
t3demo.components.Article = function () {
  t3demo.components.Article.base(this, 'constructor');
};

goog.inherits(
    t3demo.components.Article,
    clulib.cm.Component
);

t3demo.components.Article.prototype.onInit = function () {
  console.log('t3demo.components.Article');
};