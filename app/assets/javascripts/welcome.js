function mostar_div(id_video) {
  $(".all-body").fadeIn(600);
  $(".see-video#" + id_video).fadeIn(600);
}
function ocultar_div(id_video) {
  $(".all-body").fadeOut(600);
  $(".see-video#"+ id_video).fadeOut(600);
}
function ocyultar_button() {
  $(".btn-success").fadeOut(600);
}