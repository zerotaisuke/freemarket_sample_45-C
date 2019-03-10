
var pics_src = new Array("../images/top_image/1.jpg","../images/top_image/2.jpg","../images/top_image/3.jpg");
  var num = -1;
  slideshow_timer();

  function slideshow_timer(){
    if (num == 2){
     num = 0;
   }else {
     num ++;
   }
 document.getElementById("main_image").src=pics_src[num];
  setTimeout("slideshow_timer()",1000);
}