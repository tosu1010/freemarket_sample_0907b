$(function(){
  $('.mypage__main__tab > li').on('click', function(){
    $(this).siblings().removeClass('active');
    $(this).addClass('active');
    
    let index = $('.mypage__main__tab > li').index(this);
    $('.mypage__main__tab-content > ul').eq(index).siblings().removeClass('show');
    $('.mypage__main__tab-content > ul').eq(index).addClass('show');
  });
});