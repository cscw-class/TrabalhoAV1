(function(){
 "use strict";

//=================================modal load==========================================
 var wrapp = $('#myModal2 .modal-dialog .modal-body');
    $('a.load-contact').on('click', function(e){
	
        var href = $(this).attr('rel');
        wrapp.load(href + ' .contactForm');
        
		e.preventDefault();
   
    });
 
	
 $("[data-gal='tooltip']").tooltip();
    
//===================== validation ========================================= 

boxHeight();
})();


$(window).resize(function() {
    boxHeight();
});

$(window).load(function() {
var wrappF = $('#myModal .modal-dialog .modal-body');
	$('a.load-folio').on('click', function(e){
	 
		var hrefF = $(this).attr('rel');
		wrappF.load(hrefF + ' .portfolio');
	   
		e.preventDefault();
	});
//=================================flex gallery==========================================    
initFlexSliders();
valid();
$('#myModal2').on('shown.bs.modal', function (e) {
valid();

});


	
$('#myModal').on('shown.bs.modal', function (e) {

	initFlexSliders();
	
});

});
//=================================tooltip==========================================    

//============================ flexslider fucntion ===========================
function initFlexSliders() {
    //The slider being synced must be initialized first
  $('#carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 120,
    itemMargin: 10,
    minItems: 2,
    maxItems: 8,
    asNavFor: '#slider'
  });
   
  $('#slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
	useCSS:false,
    sync: "#carousel",
	start: function(slider){
	slider.show(100);
	},
	before: function(slider){
	slider.show(100);
	$('#myModal').show();
	}
  });
    
    
}
function valid(){
 $("input,select,textarea").not("[type=submit]").jqBootstrapValidation();
}
function boxHeight(){
 //==================================== height header============================

var wHeight = $(window).height();
$('#boxWrapp').css('min-height', wHeight); 
}