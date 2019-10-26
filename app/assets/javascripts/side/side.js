$(window).on('load',function(){


  //現在のパスを取得
  var path = location.pathname

  //ログアウト画面の場合
  if (path.match(/^\w*\/logout/)){
    $('.menu__links__box').last().addClass('.side__menu__active');
  }
  
});