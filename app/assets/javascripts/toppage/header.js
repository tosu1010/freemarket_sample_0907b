var hover_blue = 'rgb(0, 149, 238)'
var hover_black = 'rgb(0, 0, 0)'

//カテゴリー検索
document.addEventListener('turbolinks:load', function(){
   //大分類を表示・非表示
  $('.lower__left__category').hover(function() {

    $('.lower__left__category_search').css('color', hover_blue); 
    $(".lower__left__category__box").show(); 

    $(document).ready(function(){

      //中分類を表示・非表示
      $('.category__list1__item').hover(function(){

        $(this).addClass('category__list1_active');
        $('.category__list1_active').children('.category__list2').show();

      },function(){

        $(this).removeClass('category__list1_active');
        $(this).children('.category__list2').hide();

      });

      //小分類を表示・非表示
      $('.category__list2__item').hover(function(){

        $(this).addClass('category__list2_active');
        $('.category__list2_active').children('.category__list3').show();

      },function(){
  
        $(this).removeClass('category__list2_active');
        $(this).children('.category__list3').hide();
    
      });
    });
  }, function() {

    $(".lower__left__category__box").hide(); 
    $('.lower__left__category_search').css('color', hover_black); 

  });
});

//ブランド検索
document.addEventListener('turbolinks:load', function(){

  //ブランドを表示・非表示
  $('.lower__left__brand').hover(function() {

    $('.lower__left__brand_search').css('color', hover_blue); 
    $(".lower__left__brand__box").show(); 

  }, function() {

    $(".lower__left__brand__box").hide(); 
    $('.lower__left__brand_search').css('color', hover_black); 

  });
});
