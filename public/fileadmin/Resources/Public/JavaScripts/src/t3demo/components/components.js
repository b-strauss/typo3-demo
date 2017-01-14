goog.provide('t3demo.components');

goog.require('t3demo.components.Article');

/**
 * @type {Object<string, function(new:clulib.cm.Component)>}
 */
t3demo.components.collection = {
  't3demo-article': t3demo.components.Article
};