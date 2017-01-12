goog.provide('t3demo.net.libs');

/**
 * @returns {Promise}
 */
t3demo.net.libs.loadPicturefill = () => SystemJS.import('node_modules/picturefill/dist/picturefill.min.js');

/**
 * @returns {Promise}
 */
t3demo.net.libs.loadSwiper = () => SystemJS.import('node_modules/swiper/dist/js/swiper.min.js');