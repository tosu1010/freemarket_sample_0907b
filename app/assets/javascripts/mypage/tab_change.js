$(function(){
  $('.mypage__main__tab > li').on('click', function(){
    $(this).siblings().removeClass('active');
    $(this).addClass('active');
  });
});