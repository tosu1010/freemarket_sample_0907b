let path = location.pathname

//削除確認メッセージをモーダルで表示する画面を特定
if (path.match(/^\w*\/exhibits\/\d*/)){
  document.addEventListener(
    "DOMContentLoaded", e => {
      let modal_open = document.getElementById("exhibition_delete");
      
      modal_open.onclick = function () {
        $('#modal').fadeIn();

        document.getElementById('modal-close-btn').onclick = function () {
          $('#modal').fadeOut();
        };

        document.getElementById("delete-comformation-btn").onclick = function () {
          document.getElementById("exhibition_delete_do").click();
        };
      };
    },
    false
  );
};