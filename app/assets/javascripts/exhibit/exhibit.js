// $(document).on('turbolinks:load', function() {
    
  /////出品画像表示/////
  /////1:1/////
    let exhibit_photo1 =
      `
      <div class="img-view">
        <div class="img-field">
          <div class="img-field-upper">
            <img class="preview">
          </div>
          <div class="img-field-bottom">
            <label class="change">
              <div class="edit-btn">編集</div>
              <button id="clear">削除</button>
            </label>
          </div>
        </div>
      </div>
      `
  
  /////select_1/////
    let select_1 =
    `
    <label class="select_1">
      <input class="select_img" type="file" id="select_img" name="images[]" >
      <div class="content__box__dropbox">
        <div class="content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////2:1/////
    let exhibit_photo2 =
    `
    <div class="img-view2">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview2">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear2">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_2/////
    let select_2 =
    `
    <label class="select_2">
      <input class="select_img_2" id="select_img_2" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__2">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////3:1/////
    let exhibit_photo3 =
    `
    <div class="img-view3">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview3">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear3">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_3/////
    let select_3 =
    `
    <label class="select_3">
      <input class="select_img_3" id="select_img_3" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__3">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////4:1/////
    let exhibit_photo4 =
    `
    <div class="img-view4">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview4">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <input class="change_select_img" type="file" id="change_select_img"/>
            <div class="edit-btn">編集</div>
            <button id="clear4">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_4/////
    let select_4 =
    `
    <label class="select_4">
      <input class="select_img_4" id="select_img_4" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__4">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////5:1/////
    let exhibit_photo5 =
    `
    <div class="img-view5">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview5">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear5">削除</button>
            </label>
        </div>
      </div>
    </div>
    `
  
    let exhibit_photo5_2 =
    `
    <div class="content__box__select-img-2">
      <label class="select_6">
        <input class="select_img_6" id="select_img_6" type="file" name="images[]", multiple= true>
        <div class="content__box__dropbox__6">
          <div class="content__box__dropbox__form">
            ドラッグアンドドロップ
            <br>
            またはクリックしてファイルをアップロード
          </div>
        </div>
      </label>
    </div>
    `
  
  
  /////select_5/////
    let select_5 =
    `
    <label class="select_5">
      <input class="select_img_5" id="select_img_5" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__5">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
    
  /////6:1/////
    let exhibit_photo6 =
    `
    <div class="img-view6">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview6">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear6">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_6/////
    let select_6 =
    `
    <label class="select_6">
      <input class="select_img_6" id="select_img_6" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__6">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////7:1/////
    let exhibit_photo7 =
    `
    <div class="img-view7">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview7">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear7">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_7/////
    let select_7 =
    `
    <label class="select_7">
      <input class="select_img_7" id="select_img_7" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__7">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////8:1/////
    let exhibit_photo8 =
    `
    <div class="img-view8">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview8">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear8">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_8/////
    let select_8 =
    `
    <label class="select_8">
      <input class="select_img_8" id="select_img_8" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__8">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////9:1/////
    let exhibit_photo9 =
    `
    <div class="img-view9">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview9">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear9">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_9/////
    let select_9 =
    `
    <label class="select_9">
      <input class="select_img_9" id="select_img_9" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__9">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////10/////
    let exhibit_photo10 =
    `
    <div class="img-view10">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview10">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear10">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_10/////
    let select_10 =
    `
    <label class="select_10">
      <input class="select_img_10" id="select_img_10" type="file" name="images[]", multiple= true/>
      <div class= "content__box__dropbox__10">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
      
  ////カテゴリー２/////
    $(document).on("change", "#select", function(){
      val_select = this.value
      console.log(val_select)
      ///レディース///
      if (val_select == 47){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies").show()
      }
      ///メンズ///
      else if (val_select == 184){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens").show()
      }
      ///ベビー・キッズ///
      else if (val_select == 305){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids").show()
      }
      ///インテリア////
      else if (val_select == 433){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia").show()
      }
      ///本///
      else if (val_select == 563){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-book").show()
      }
      ///おもちゃ///
      else if (val_select == 622){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-hoby").show()
      }
      ///コスメ///
      else if (val_select == 729){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme").show()
      }
      ///家電///
      else if (val_select == 827){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-electrical_appliance").show()
      }
      ///スポーツ///
      else if (val_select == 913){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-sports").show()
      }
      ///ハンドメイド///
      else if (val_select == 1022){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-hand_made").show()
      }
      ///チケット///
      else if (val_select == 1072){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ticket").show()
      }
      ///自転車///
      else if (val_select == 1131){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-bicycle").show()
      }
      ///その他///
      else if (val_select == 1191){
        $(".content__box > #pull_down").hide();
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-etc").show()
      }
    })

    ///カテゴリー３///
    $(document).on("change", "#select2", function(){
      val_select2 = this.value
      console.log(val_select2)
      ///レディース///
      if (val_select2 == 48){
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_1").show()
      }
      else if (val_select2 == 63) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_2").show()
      }
      else if (val_select2 == 78) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_3").show()
      }
      else if (val_select2 == 91) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_4").show()
      }
      else if (val_select2 == 97) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_5").show()
      }
      else if (val_select2 == 102) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_6").show()
      }
      else if (val_select2 == 113) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_7").show()
      }
      else if (val_select2 == 116) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_8").show()
      }
      else if (val_select2 == 122) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_9").show()
      }
      else if (val_select2 == 130) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_10").show()
      }
      else if (val_select2 == 145) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_11").show()
      }
      else if (val_select2 == 157) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_12").show()
      }
      else if (val_select2 == 162) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_13").show()
      }
      else if (val_select2 == 177) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-ladies2_14").show()
      }
      ///メンズ///
      else if (val_select2 == 185){
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_1").show()
      }
      else if (val_select2 == 198) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_2").show()
      }
      else if (val_select2 == 213){
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_3").show()
      }
      else if (val_select2 == 223){
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_4").show()
      }
      else if (val_select2 == 232) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_5").show()
      }
      else if (val_select2 == 245) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_6").show()
      }
      else if (val_select2 == 251) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_7").show()
      }
      else if (val_select2 == 259) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_8").show()
      }
      else if (val_select2 == 268) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_9").show()
      }
      else if (val_select2 == 283) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_10").show()
      }
      else if (val_select2 == 290) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_11").show()
      }
      else if (val_select2 == 295) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_12").show()
      }
      else if (val_select2 == 300) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-mens2_13").show()
      }
      else if (val_select2 == 304) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box > #content__box-middle").remove();
      }
      ///ベビー・キッズ///
      else if (val_select2 == 306){
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_1").show()
      }
      else if (val_select2 == 318) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_2").show()
      }
      else if (val_select2 == 327) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_3").show()
      }
      else if (val_select2 == 336) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_4").show()
      }
      else if (val_select2 == 351) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_5").show()
      }
      else if (val_select2 == 366) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_6").show()
      }
      else if (val_select2 == 375) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_7").show()
      }
      else if (val_select2 == 381) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_8").show()
      }
      else if (val_select2 == 396) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_9").show()
      }
      else if (val_select2 == 403) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_10").show()
      }
      else if (val_select2 == 408) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_11").show()
      }
      else if (val_select2 == 413) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_12").show()
      }
      else if (val_select2 == 419) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_13").show()
      }
      else if (val_select2 == 427) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-baby_kids2_14").show()
      }
      ///インテリア///
      else if (val_select2 == 434){
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_1").show()
        console.log("インテリア")
      }
      else if (val_select2 == 446){
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_2").show()
      }
      else if (val_select2 == 461) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_3").show()
      }
      else if (val_select2 == 475) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_4").show()
      } 
      else if (val_select2 == 485) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_5").show()
      }
      else if (val_select2 == 496) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_6").show()
      }
      else if (val_select2 == 509) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_7").show()
      } 
      else if (val_select2 == 516) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_8").show()
      }
      else if (val_select2 == 522) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_9").show()
      }
      else if (val_select2 == 527) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_10").show()
      }
      else if (val_select2 == 532) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_11").show()
      }
      else if (val_select2 == 547) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-interia2_12").show()
      }
      else if (val_select2 == 562) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
      }
      ///本///
      else if (val_select2 == 564){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-book2_1").show()
      }
      else if (val_select2 == 579) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-book2_2").show()
      }
      else if (val_select2 == 587) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-book2_3").show()
      }
      else if (val_select2 == 593) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-book2_4").show()
      }
      else if (val_select2 == 601) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-book2_5").show()
      }
      else if (val_select2 == 611) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-book2_6").show()
      }
      else if (val_select2 == 615) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-book2_7").show()
      }
      ///おもちゃ///
      else if (val_select2 == 623){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_1").show()
      }
      else if (val_select2 == 634) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_2").show()
      }
      else if (val_select2 == 640) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_3").show()
      }
      else if (val_select2 == 649) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_1").show()
      }
      else if (val_select2 == 664) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_4").show()
      }
      else if (val_select2 == 673) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_5").show()
      }
      else if (val_select2 == 688) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_6").show()
      }
      else if (val_select2 == 695) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_7").show()
      }
      else if (val_select2 == 710) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_8").show()
      }
      else if (val_select2 == 714) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hoby2_9").show()
      }
      ///コスメ///
      else if (val_select2 == 730){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-cosme2_1").show()
      }
      else if (val_select2 == 740) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_2").show()
      }
      else if (val_select2 == 755) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_3").show()
      }
      else if (val_select2 == 765) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_4").show()
      }
      else if (val_select2 == 771) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_5").show()
      }
      else if (val_select2 == 786) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_6").show()
      }
      else if (val_select2 == 795) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_7").show()
      }
      else if (val_select2 == 805) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_8").show()
      }
      else if (val_select2 == 809) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_9").show()
      }
      else if (val_select2 == 816) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_10").show()
      }
      else if (val_select2 == 822) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-cosme2_11").show()
      }
      ///家電///
      else if (val_select2 == 828){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_1").show()
      }
      else if (val_select2 == 834) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_2").show()
      }
      else if (val_select2 == 843) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_3").show()
      }
      else if (val_select2 == 852) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_4").show()
      }
      else if (val_select2 == 860) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_5").show()
      }
      else if (val_select2 == 869) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_6").show()
      }
      else if (val_select2 == 878) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_7").show()
      }
      else if (val_select2 == 885) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_8").show()
      }
      else if (val_select2 == 899) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-electrical_appliance2_9").show()
      }
      else if (val_select2 == 911) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-electrical_appliance2_10").show()
      }
      ///スポーツ///
      else if (val_select2 == 914){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_1").show()
      }
      else if (val_select2 == 923) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_2").show()
      }
      else if (val_select2 == 930) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_3").show()
      }
      else if (val_select2 == 938) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_4").show()
      }
      else if (val_select2 == 944) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_5").show()
      }
      else if (val_select2 == 955) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_6").show()
      }
      else if (val_select2 == 963) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_7").show()
      }
      else if (val_select2 == 973) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_8").show()
      }
      else if (val_select2 == 985) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_9").show()
      }
      else if (val_select2 == 996) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_10").show()
      }
      else if (val_select2 == 1009) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-sports2_11").show()
      }
      else if (val_select2 == 1019) {
        $(".content__box > #pull_down2").hide();
      }
      ///ハンドメイド///
      else if (val_select2 == 1023){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_1").show()
      }
      else if ( val_select2 == 1033) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_1").show()
      }
      else if (val_select2 == 1040) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_2").show()
      }
      else if (val_select2 == 1045) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_3").show()
      }
      else if (val_select2 == 1053) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_4").show()
      }
      else if (val_select2 == 1057) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_5").show()
      }
      else if (val_select2 == 1063) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_6").show()
      }
      else if (val_select2 == 1068) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-hand_made2_7").show()
      }
      else if (val_select2 == 1071) {
        $(".content__box > #pull_down2").hide();
      }
      ///チケット///
      else if (val_select2 == 1073){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-ticket2_1").show()
      }
      else if (val_select2 == 1082) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-ticket2_2").show()
      }
      else if (val_select2 == 1094) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-ticket2_3").show()
      }
      else if (val_select2 == 1104) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-ticket2_4").show()
      }
      else if (val_select2 == 1109) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-ticket2_5").show()
      }
      else if (val_select2 == 1113) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-ticket2_6").show()
      }
      else if (val_select2 == 1124) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-ticket2_7").show()
      }
      else if (val_select2 == 1130) {
        $(".content__box > #pull_down2").hide();
      }
      ///自転車///
      else if (val_select2 == 1132){
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-bicycle2_1").show()
      }
      else if (val_select2 == 1135) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-bicycle2_2").show()
      }
      else if (val_select2 == 1140) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-bicycle2_3").show()
      }
      else if (val_select2 == 1155) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-bicycle2_4").show()
      }
      else if (val_select2 == 1169) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-bicycle2_5").show()
      }
      else if (val_select2 == 1184) {
        $(".content__box > #pull_down2").hide();
        $(".content__box > #content__box-middle").remove();
        $(".content__box__select-category-bicycle2_6").show()
      }
      ///その他///
      // else if (val_select2 == 1192){
      //   $(".content__box > #pull_down2").hide();
      //   $(".content__box__select-category-etc2_1").show()
      // }
      else if (val_select2 == 1193) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-etc2_1").show()
      }
      else if (val_select2 == 1204) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-etc2_2").show()
      }
      else if (val_select2 == 1214) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-etc2_3").show()
      }
      else if (val_select2 == 1226) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-etc2_4").show()
      }
      else if (val_select2 == 1239) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-etc2_5").show()
      }
      else if (val_select2 == 1250) {
        $(".content__box > #pull_down2").hide();
        $(".content__box__select-category-etc2_6").show()
      }
      else if (val_select2 == 1257) {
        $(".content__box > #pull_down2").hide();
      }
    })

  /////サイズとブラント追加/////
    $(document).on("change", ".select2", function(){
      let size =
        `
        <div class="content__box-middle" id="content__box-middle">
          <div class="content__box__title">
            サイズ
            <div class="form_require">
              必須
            </div>
          </div>
          <div class="content__box__select">
            <div class="content__box__select__box">
              <fields_for @exhibit do |f|>
                <select :size_id class="select6" name= [exhibit][size_id]>
                  <option value="0">---</option>
                  <option value="1">XXS以下</option>
                  <option value="2">XS(SS)</option>
                  <option value="3">S</option>
                  <option value="4">M</option>
                  <option value="5">L</option>
                  <option value="6">XL(LL)</option>
                  <option value="7">2XL(3L)</option>
                  <option value="8">3XL(4L)</option>
                  <option value="9">4XL(5L)以上</option>
                  <option value="10">FREE SIZE</option>
                  </select>                
                </select>
              <div class="icon">
                <i class="fa fa-angle-down"></i>
              </div>
            </div>
          </div>
        </div>
        `
      let size_shoes =
        `
          <div class="content__box-middle" id="content__box-middle">
            <div class="content__box__title">
              サイズ
              <div class="form_require">
                必須
              </div>
            </div>
            <div class="content__box__select">
              <div class="content__box__select__box">
                <fields_for @exhibit do |f|>
                  <select :size_id class="select6" name= [exhibit][size_id]>
                    <option value="0">---</option>
                    <option value="11">20cm以下</option>
                    <option value="12">20.5cm</option>
                    <option value="13">21cm</option>
                    <option value="14">21.5cm</option>
                    <option value="14">22cm</option>
                    <option value="16">22.5cm</option>
                    <option value="17">23cm</option>
                    <option value="18">23.5cm</option>
                    <option value="19">24cm</option>
                    <option value="20">24.5cm</option>
                    <option value="21">25cm</option>
                    <option value="22">25.5cm</option>
                    <option value="23">26cm</option>
                    <option value="24">26.5cm</option>
                    <option value="25">27cm</option>
                    <option value="26">27.5cm以上</option>
                  </select>
                <div class="icon">
                  <i class="fa fa-angle-down"></i>
                </div>
              </div>
            </div>
          </div>
        `

        let size_kid_shoes =
        `
          <div class="content__box-middle" id="content__box-middle">
            <div class="content__box__title">
              サイズ
              <div class="form_require">
                必須
              </div>
            </div>
            <div class="content__box__select">
              <div class="content__box__select__box">
                <fields_for @exhibit do |f|>
                  <select :size_id class="select6" name= [exhibit][size_id]>
                    <option value="0">---</option>
                    <option value="27">10.5cm以下</option>
                    <option value="28">11cm・11.5cm</option>
                    <option value="29">12cm・12.5cm</option>
                    <option value="30">13cm・13.5cm</option>
                    <option value="31">14cm・14.5cm</option>
                    <option value="32">15cm・15.5cm</option>
                    <option value="33">16cm・16.5cm</option>
                    <option value="34">17cm以上</option>
                  </select>
                <div class="icon">
                  <i class="fa fa-angle-down"></i>
                </div>
              </div>
            </div>
          </div>
        `

      let brand =
        `
        <div class="content__box-middle" id="content__box-middle">
          <div class="content__box__title">
            ブランド
            <div class="form_require", id="opt">
              任意
            </div>
          </div>
          <div class="content__box__select">
            <div class="content__box__select__box">
              <fields_for @brand do |f|>
                <input :name class="input-form_brand" placeholder= "例）シャネル" name= [brand][name]>
            </div>
          </div>
        </div>
        `

    if(val_select2 == 48 || val_select2 == 63 || val_select2 == 78 || val_select2 == 91 || val_select2 == 97 || val_select2 == 113 || val_select2 == 185 || val_select2 == 198 || val_select2 == 213 || val_select2 == 245 || val_select2 == 290 || val_select2 == 300 || val_select2 == 306 || val_select2 == 318 || val_select2 == 327 || val_select2 == 336 || val_select2 == 351 || val_select2 == 366) {
      $(".content__box > #content__box-middle").remove();
      $("#content_box").append(size);
      $(".content__box > #content__box-middle").append(brand);
    } 
    else if(val_select == 47 || val_select == 184 || val_select == 305 || val_select == 433 || val_select == 729 ) {
      $(".content__box > #content__box-middle").remove();
      $("#content_box").append(brand);
    }
    else {
      $(".content__box > #content__box-middle").remove();
    }
     
    if (val_select2 == 102 || val_select2 == 223) {
      $(".content__box > #content__box-middle").remove();
      $("#content_box").append(size_shoes);
      $("#content_box").append(brand);
    }
    else if(val_select2 == 375) {
      $(".content__box > #content__box-middle").remove();
      $("#content_box").append(size_kid_shoes);
      $("#content_box").append(brand);
    }

  });

  
  /////発送方法/////
  $(document).on("change", ".select4", function(){

    let shipping=
    `
    <div class="content__box-middle">
      <div class="content__box__title">
        配送方法
        <div class="form_require">
          必須
        </div>
      </div>
      <div class="content__box__select">
        <div class="content__box__select__box">
          <select :delivery_type_id class="select5" name=[delivery][delivery_type_id]>
            <option value="0">--
            <option value="1">未定
            <option value="2">らくらくメルカリ便
            <option value="3">ゆうメール
            <option value="4">レターパック
            <option value="5">普通郵便(定形、定形外)
            <option value="6">クロネコヤマト
            <option value="7">ゆうパック
            <option value="8">クリックポスト
            <option value="9">ゆうパケット
          </select>
          <div class="icon">
            <i class="fa fa-angle-down"></i>
          </div>
        </div>
      </div>
    </div>
  `
        
    $(".content__box1").append(shipping);
    $(document).off("change", ".select4");
  });
  
  /////消費税計算/////
  $(document).on("keyup", ".input-form", function(){
    let input_price = $("#price").val()
    fee = Math.floor(parseInt(input_price) * 10/100);
    profit = input_price - fee

      if (9999999 >= input_price && input_price >= 300){
        $(".total-price").empty();
          if (!input_price){
            $("#total-price").val("");
            return false;
          }
          else {
          };

          $("#sales-fee").val("¥" + fee);
          /////販売利益に表示させる/////
          $("#total-price").val("¥" + profit);
        }
      else 
      { 
        /////価格に入力された値が削除されて300以下になった場合に-を表示させる/////
        if ($(".total-price").is(":visible")){
          $("#total-price").val("-")
          $("#sales-fee").val("-")
        }
        else {
          $("#toatl-price").replace("なし")
          
        }
      }
  });
  
  
  /////1:1/////
  $(document).on('change', '#select_img', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox").replaceWith(exhibit_photo1);
      $(".img-view").after(select_2);
      $(".preview").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);  
  });

  /////2:1/////
  $(document).on('change', '#select_img_2', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__2").replaceWith(exhibit_photo2);
      $(".img-view2").after(select_3);
      $(".preview2").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////3:1/////
  $(document).on('change', '#select_img_3', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__3").replaceWith(exhibit_photo3);
      $(".img-view3").after(select_4);
      $(".preview3").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////4:1/////
  $(document).on('change', '#select_img_4', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__4").replaceWith(exhibit_photo4);
      $(".img-view4").after(select_5);
      $(".preview4").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////5:1/////
  $(document).on('change', '#select_img_5', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__5").replaceWith(exhibit_photo5);
      $(".content__box__img").append(exhibit_photo5_2);
      $(".preview5").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////6:1/////
  $(document).on('change', '#select_img_6', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__6").replaceWith(exhibit_photo6);
      $(".img-view6").after(select_7);
      $(".preview6").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////7:1/////
  $(document).on('change', '#select_img_7', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__7").replaceWith(exhibit_photo7);
      $(".img-view7").after(select_8);
      $(".preview7").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////8:1/////
  $(document).on('change', '#select_img_8', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__8").replaceWith(exhibit_photo8);
      $(".img-view8").after(select_9);
      $(".preview8").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
  
  /////9:1/////
  $(document).on('change', '#select_img_9', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__9").replaceWith(exhibit_photo9);
      $(".img-view9").after(select_10);
      $(".preview9").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////10/////
  $(document).on('change', '#select_img_10', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".content__box__dropbox__10").replaceWith(exhibit_photo10);
      $(".preview10").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
      
  
  /////削除機能/////
  $(document).on("click", "#clear", function(){
    $(".img-view").remove();
    $("label.select_2").replaceWith(select_1)
  });

  $(document).on("click", "#clear2", function(){
    $(".img-view2").remove();
    $("label.select_3").replaceWith(select_2)
  });
  
  $(document).on("click", "#clear3", function(){
    $(".img-view3").remove();
    $("label.select_4").replaceWith(select_3)
  });

  $(document).on("click", "#clear4", function(){
    $(".img-view4").remove();
    $("label.select_5").replaceWith(select_4)
  });

  $(document).on("click", "#clear5", function(){
    $(".img-view5").remove();
    $(".content__box__select-img-2").remove();
    $(".img-view4").after(select_5);
  });

  $(document).on("click", "#clear6", function(){
    $(".img-view6").remove();
    $("label.select_7").replaceWith(select_6)
  });

  $(document).on("click", "#clear7", function(){
    $(".img-view7").remove();
    $("label.select_8").replaceWith(select_7)
  });

  $(document).on("click", "#clear8", function(){
    $(".img-view8").remove();
    $("label.select_9").replaceWith(select_8)
  });

  $(document).on("click", "#clear9", function(){
    $(".img-view9").remove();
    $("label.select_10").replaceWith(select_9)
  });

  $(document).on("click", "#clear10", function(){
    $(".img-view10").replaceWith(select_10);

  });
  
  

  
  
  
  
  

