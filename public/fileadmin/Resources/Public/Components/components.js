goog.provide('t3demo.components');

goog.require('goog.structs.Map');

goog.require('t3demo.components.Article');

t3demo.components.collection = new goog.structs.Map({
  't3demo-article': t3demo.components.Article
});