goog.provide('t3demo.net.libs');

/**
 * @returns {Promise}
 */
t3demo.net.libs.loadSwiper = () => SystemJS.import('node_modules/swiper/dist/js/swiper.min.js');