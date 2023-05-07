let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.navbar');


menu.onclick = () =>{
    menu.classList.toggle('fa-times');
    navbar.classList.toggle('active');
}


window.onscroll = () =>{
    menu.classList.remove('fa-times');
    navbar.classList.remove('active');
}









var video = document.querySelector('video');
video.playbackRate = 2;

var video1 = document.getElementById('my-video');
  video1.play();





 
 
//   const audio = document.getElementById('my-audio');
//  audio.addEventListener('load', () => {
//    audio.play();
//  });
