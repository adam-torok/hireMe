$(document).ready(function(){
  $(".cta").click(function(){
    window.location.replace("searched.php?id=all");
  })

  $(".card").click(function(){
  let id = $(this).data("id");
  window.location.replace("searched.php?id="+id);
  })
})
