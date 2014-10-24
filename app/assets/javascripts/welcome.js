function mostrar_div(id_video) {
  $(".all-body").fadeIn(600);
  $(".see-video#" + id_video).append("<iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/"+ id_video +"\" frameborder=\"0\" allowfullscreen></iframe>").fadeIn(600);
}
function ocultar_div(id_video) {
  $(".all-body").fadeOut(600);
  $("div#"+ id_video + ".see-video iframe").remove();
  $("div#"+ id_video + ".see-video").fadeOut(600);
  $(".see-like#" + id_video).fadeOut(600);
}
function refresh(){
  location.reload();
}
function user_video_like(id_video) {
  $(".all-body").fadeIn(600);
  $(".see-like#" + id_video).fadeIn(600);
}