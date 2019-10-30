$(function(){
  $('.item-photos__carousel__dots__dot:first-child').addClass('active');

  // マウスオーバーしたときにスタイルを適用する
  $('.item-photos__carousel__dots__dot').hover(function(){
    $('.active').css({'opacity':'', 'pointer':''});
    $('.active').removeClass('active');
    $(this).addClass('active');
    // $(this).css({'opacity':'1', 'pointer':'default'});
  });

  // 画像がスライドしたときに、対応している画像にスタイルを適用させる
  $('.item-photos__carousel__stage__item').on('afterChange', function(){
    let slideIndex = $(this).slick('slickCurrentSlide');
    let curentDot = $('.item-photos__carousel__dots__dot').eq(slideIndex);
    curentDot.addClass('active');
    $('.active').css({'opacity':'', 'pointer':''});
    $('.active').removeClass('active');
    curentDot.addClass('active');
    curentDot.css({'opacity':'1', 'pointer':'default'});
  });

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

  $('.item-photos__carousel__dots__dot').on('mouseover', function(e){
    var $currTarget = $(e.currentTarget);
    index = $(this).index();
    slickObj = $('.item-photos__carousel__stage').slick('getSlick');
    slickObj.slickGoTo(index);
  });
});