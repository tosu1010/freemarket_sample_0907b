$(function(){

  //現在のパスを取得
  var path = location.pathname

  // 現在のパスがメニューのリンクと一致すれば、背景色を変更する
  $('.menu__links__box__link').each(function(index, elem){
    if(path == elem.getAttribute('href')){
      $(elem).css({
        'background' : '#eee',
        'font-weight' : '600'
      })
      $(elem).find('.menu__links__box__angle').css({
        'color': '#333',
        'font-size': '1.2em'
      })
    }
  })
});