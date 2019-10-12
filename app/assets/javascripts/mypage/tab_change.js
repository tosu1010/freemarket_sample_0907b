$(function(){
  $('.tab > li').on('click', function(){
    $(this).siblings().removeClass('active');
    $(this).addClass('active');
    
    let index = $('.tab > li').index(this);
    $('.tab-content > ul').eq(index).siblings().removeClass('show');
    $('.tab-content > ul').eq(index).addClass('show');
  });
});