import { initProgressBar } from '../plugins/progress_bar';

const initWindowScroll = () => {
  let graphLoaded = 0;
  $(window).scroll(function(){
  var scrolledFromTop = $(window).scrollTop() + $(window).height();
  $(".appear").each(function(){
    var distanceFromTop = $(this).offset().top;
    if(scrolledFromTop >= distanceFromTop+100){
      var delaiAnim = $(this).data("delai");
      $(this).delay(delaiAnim).animate({
        top:0,
        opacity:1
      });
    }
  });
  $(".notappear").each(function(){
    var distanceFromTop = $(this).offset().top;
    if(scrolledFromTop >= distanceFromTop+100){
      initProgressBar();
      var delaiAnim = $(this).data("delai");
      $(this).delay(delaiAnim).animate({
        top:0,
        opacity:1
      });
    }
  });
});
}

export { initWindowScroll }
