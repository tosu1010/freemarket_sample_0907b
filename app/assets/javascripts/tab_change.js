$(function(){
  $('.mypage__main__tab > li').on('click', function(){
    $('.mypage__main__tab > li').removeClass('active');
    $(this).addClass('active');
  });
});