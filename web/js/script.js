$(document).ready(function(){

$('#slides').superslides({
	animation:'fade',
	play: 4000

	});

var typed = new Typed(".typed",{
	strings:["Web Developer.","Computer Engineer."
	,"Student.","Wanderlust"],
	typeSpeed: 70,
	loop: true,
	startDelay: 1000,
	showCursor: false

});
$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        480:{
            items:2
        },
        768:{
            items:3
        },
        938:{
            items:4
        }
    }
});

 var skillsTopOffset = $(".skillSection").offset().top;
 $(window).scroll( function() {
 	if(window.pageYOffset > skillsTopOffset - $(window).height()+200){
 		 $('.chart').easyPieChart({
 	easing: 'easeInOut',
 	barColor:'#fff' ,
 	trackColor:false,
 	scaleColor: false,
 	size:152,
 	lineWidth:4,
 	onStep:function(from, to, percent){
 		$(this.el).find('.percent').text(Math.round(percent));
 	}
            //your options goes here
        });
 	}

 });




});