$(document).ready(function() {
	
	/* Simple Style */
	$('.wrapper-simple input[type=submit]').toggle(function(){
		
		$('.arrow2').hide();
		$('.wrapper-simple').animate({'width':'300px'})
				  .end().find('.wrapper-simple input[type=text]').animate({'width': '250px'})
				  .end().find('.wrapper-simple img').animate({'marginLeft': '-5px'})
				  .end().find(this).animate({'marginLeft':'22em'}).attr('value', 'CANCEL');
		
	}, function() {
		
		$('.arrow2').show();
		$('.wrapper-simple').animate({'width':'60px'})
				  .end().find('.wrapper-simple input[type=text]').animate({'width': '1px'})
				  .end().find('.wrapper-simple img').animate({'marginLeft': '0'})
				  .end().find(this).animate({'marginLeft':'0'}).attr('value', '');
		
	});
	
	/* Cube Style */
	$('.search-button1').click(function() {
		
			
			$('.content-wrapper1').addClass('switch-show');
			$('.search-box1').addClass('show-search-box');
			
			setTimeout(function(){
		
				$('.content-wrapper1').removeClass('switch-show');
				$('.search-button1').removeClass('show-search-button').addClass('hide-search-button');
				$('.search-box1').addClass('showed-search-box');
			
			},480);
	});
	
	$('.search-box1 img').click(function() {
		
		$('.search-button1').removeClass('hide-search-button');
		$('.search-box1').addClass('hidden-search-box');
		$('.content-wrapper1').addClass('switch-hide');
		
			
			setTimeout(function(){
		
				$('.content-wrapper1').removeClass('switch-hide');
				$('.search-button1').removeClass('show-search-button');
				$('.search-box1').removeClass('show-search-box showed-search-box hidden-search-box');
			
			},480);
			
	});
	
	/* Cube Style With Animate */
	$('.search-button2').click(function() {
		
		$('.arrow').hide();
		
		$(this).stop().animate({'width':'300px'}, 500, function() {
			
			$('.content-wrapper2').addClass('switch-show');
			$('.search-box2').addClass('show-search-box');
			
			setTimeout(function(){
		
				$('.content-wrapper2').removeClass('switch-show');
				$('.search-button2').removeClass('show-search-button').addClass('hide-search-button');
				$('.search-box2').addClass('showed-search-box');
			
			},480);
			
		});
	});
	
	$('.search-box2 img').click(function() {
		
		
		$('.search-button2').removeClass('hide-search-button');
		$('.search-box2').addClass('hidden-search-box');
		$('.content-wrapper2').addClass('switch-hide');
		
		$('.search-button2').addClass('show-search-button').stop().delay(500).animate({'width':'50px'}, 500, function() {
			
			$('.content-wrapper2').removeClass('switch-hide');
			$('.search-button2').removeClass('show-search-button');
			$('.search-box2').removeClass('show-search-box showed-search-box hidden-search-box');
			
			$('.arrow').show();
			
		});
	});

	if(!Modernizr.input.placeholder){
		$("input").each( function(){
				
				thisPlaceholder = $(this).attr("placeholder");
				
				if(thisPlaceholder!=""){
					
					$(this).val(thisPlaceholder);
					
					$(this).focus(function(){ if($(this).val() == thisPlaceholder) $(this).val(""); });
					$(this).blur(function(){ if($(this).val()=="") $(this).val(thisPlaceholder); });
				}
		});
	}
});