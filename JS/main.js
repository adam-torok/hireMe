$(document).ready(function(){
  $(".card").click(function(){
  let id = $(this).data("id");
  window.location.replace("searched.php?id="+id);
  })
})
