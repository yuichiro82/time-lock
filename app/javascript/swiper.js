document.addEventListener('DOMContentLoaded', function() {
  var swiper = document.getElementsByClassName(".swiper-container");
  swiper = new Swiper('.swiper-container', {
    slidesPerView: 2,
    spaceBetween: 5,
    pagination: {
      el: '.swiper-pagination',
      clickable: true
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    // ブレイクポイントを設定（1023px以下の時に適用されるオプション）
    breakpoints: {
      1023: {
        slidesPerView: 1,
        spaceBetween: 0,
      }
    }
  });
});