$(function(){
  $('.item-photos__carousel__dots__dot:first-child').addClass('active');

  $('.item-photos__carousel__stage').slick({
    autoplay: false,
    Speed: 7000,
    arrows: false,
    dots: false,
    dotsClass: 'item-photos__carousel__dots__dot',
    pauseOnDotsHover: true,
    infinite: true,
    waitForAnimate: false,
  });

  // マウスオーバーしたときにスタイルを適用する
  $('.item-photos__carousel__dots__dot').on('mouseover', function(e){
    $('.active').removeClass('active');
    $(this).addClass('active');
    var $currTarget = $(e.currentTarget);
    index = $(this).index();
    slickObj = $('.item-photos__carousel__stage').slick('getSlick');
    slickObj.slickGoTo(index);
  });

  // 画像がスライドしたときに、対応している画像にスタイルを適用させる
  $('.item-photos__carousel__stage').on('afterChange', function(){
    let slideIndex = $(this).slick('slickCurrentSlide');
    let currentDot = $('.item-photos__carousel__dots__dot').eq(slideIndex);
    $('.active').removeClass('active');
    currentDot.addClass('active');
  });
});