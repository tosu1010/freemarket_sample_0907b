$(function(){
  $('.tab > li').on('click', function(){
    $(this).siblings().removeClass('active');
    $(this).addClass('active');
    
    let num = $('.tab > li').index(this);
    $('.tab-content > ul').eq(num).siblings().removeClass('show');
    $('.tab-content > ul').eq(num).addClass('show');
  });
});