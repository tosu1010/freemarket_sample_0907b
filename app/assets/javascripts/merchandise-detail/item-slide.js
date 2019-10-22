$(function(){
  $('.owl-dots .owl-dot:first-child').addClass('active');

  // マウスオーバーしたときにスタイルを適用する
  $('.owl-dot').hover(function(){
    $('.active').css({'opacity':'', 'pointer':''});
    $('.active').removeClass('active');
    $(this).addClass('active');
    $(this).css({'opacity':'1', 'pointer':'default'});
  });

  // 画像がスライドしたときに、対応している画像にスタイルを適用させる
  $('.owl-stage').on('afterChange', function(){
    let slideIndex = $(this).slick('slickCurrentSlide');
    let curentDot = $('.owl-dot').eq(slideIndex);
    curentDot.addClass('active');
    $('.active').css({'opacity':'', 'pointer':''});
    $('.active').removeClass('active');
    curentDot.addClass('active');
    curentDot.css({'opacity':'1', 'pointer':'default'});
  });

  $('.owl-stage').slick({
    autoplay: false,
    Speed: 7000,
    arrows: false,
    dots: false,
    dotsClass: 'owl-dots',
    pauseOnDotsHover: true,
    infinite: true,
    waitForAnimate: false,
  });

  $('.owl-dot').on('mouseover', function(e){
    var $currTarget = $(e.currentTarget);
    index = $(this).index();
    slickObj = $('.owl-stage').slick('getSlick');
    slickObj.slickGoTo(index);
  });
});