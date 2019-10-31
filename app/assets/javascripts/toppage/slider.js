$(function(){
  $(".slide-banner.owl-carousel").owlCarousel({
    // ループ
    loop:true,
    //次へボタン、前へボタンクリック有効
    nav:true,
    // 一度に表示する画像は1つ
    items:1,
    // スライド自動切え
    autoplay:true,
    // 7秒ごとにスライドを自動切替え
    autoplayTimeout:7000,    
    //画像ホバー時は自動で切替えしない
    autoplayHoverPause:true,
    //画像の切り替わりにかかる秒数
    smartSpeed: 500,
  });
});
