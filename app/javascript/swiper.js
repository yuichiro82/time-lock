document.addEventListener('DOMContentLoaded', function() {
  var swiper = document.getElementsByClassName(".swiper-container");
  swiper = new Swiper('.swiper-container', {
    slidesPerView: 2,
    spaceBetween: 30,
    pagination: {
      el: '.swiper-pagination',
      clickable: true
    }
  });
});