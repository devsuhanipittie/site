/**
 * Magiccart 
 * @category 	Magiccart 
 * @copyright 	Copyright (c) 2014 Magiccart (http://www.magiccart.net/) 
 * @license 	http://www.magiccart.net/license-agreement.html
 * @Author: DOng NGuyen<nguyen@dvn.com>
 * @@Create Date: 2014-04-25 13:16:48
 * @@Modify Date: 2015-10-16 14:21:09
 * @@Function:
 */
 
jQuery(document).ready(function($) {

	// for Mobile
	var menuMobile = $('.nav-mobile');
	var switcher = menuMobile.data('switcher');
	var MenuContainer = '.magicmenu';
	if($(window).width() <= switcher){$('.nav-desktop').hide();}
	$(window).resize(function(){
		var $window = $(window).width();
		if($window <= switcher)$('.nav-desktop').hide();
		else $('.nav-desktop').show();

 	})	
    menuMobile.meanmenu({
    	meanMenuContainer: MenuContainer,
    	meanScreenWidth: switcher,
	});	

	(function(selector){
		var $content = $(selector);
		var $navDesktop = $('.nav-desktop', $content);
		/* Fix active Cache */
		var body = $('body');
		if(!body.hasClass('catalog-category-view')){
			if(body.hasClass('catalog-product-view')){
				var urlTop = body.find('.breadcrumbs ul').children().eq(1).find('a');
				if(urlTop.length){
					link = urlTop.attr('href');
					var topUrl = $('.level0 a.level-top', $content);
					var catUrl = $('.level0.cat a.level-top', $content);
					var activeUrl = $('.level0.active a.level-top', $content); // default active
					catUrl.each(function() {
						var $this = $(this);
						if($this.attr('href').indexOf(link) > -1){
							activeUrl = $this;						
							var activeObj = activeUrl.parent();
							activeObj.addClass('active');	
							$('.level0.home', $content).removeClass('active');							
						}
					});
				}
			} else {
				var currentUrl = document.URL;
				var extUrl = $('.level0.ext a.level-top', $content);
				var activeUrl = $('.level0.home a.level-top', $content); // default active
				extUrl.each(function() {
					var $this = $(this);
					if(currentUrl.indexOf($this.attr('href')) > -1 && $this.attr('href').length > activeUrl.attr('href').length) activeUrl = $this;
				});
				var activeObj = activeUrl.parent();
				if(activeObj.length) $('.level0.home', $content).removeClass('active');
				activeObj.addClass('active');			
			}		
		} else {
			$('.level0.home', $content).removeClass('active');
		}
		/* End fix active Cache */

	    // Sticker Menu
	    if($navDesktop.hasClass('sticker')){			
			$(window).scroll(function () {
			 if ($(this).scrollTop() > 80) {
			  $('.header-container').addClass('header-container-fixed');
			 } 
			 else{
			  $('.header-container').removeClass('header-container-fixed');
			 }
			 return false;
			});
	    }
	    // End Sticker Menu

		var $window  = $(window).width();
		setReponsive($window);
		$(window).resize(function(){
			var $window = $(window).width();
			setReponsive($window);
	 	})
		var $navtop = $('.level0', $content);
		var maxW 	= $('.container').outerWidth();
		$navtop.each(function(index, val) {
			var $options  = $(this).data('options');
			var $cat_mega = $('.cat-mega', $(this));
			var $children = $('.children', $cat_mega);
			var columns   = $children.length;
			var wchil 	  = $children.outerWidth();
			if($options){
				var columns 	= parseInt($options.cat_columns);
				var cat 		= parseFloat($options.cat_proportions);
				var left 		= parseFloat($options.left_proportions);
				var right 	 	= parseFloat($options.right_proportions);
				if(isNaN(left)) left = 0; if(isNaN(right)) right = 0;
				var custom 		= left + right;
				var proportions = cat + left + right;
				var cat_width	= Math.floor(100*cat/proportions);
				var temp 		= 100/columns;
				var col_width 	= (temp+Math.floor(temp))/2; // approximately down
				var left_width	= 100*left/proportions;
				var right_width	= 100*right/proportions;
				var $childtop  	= $('.child-top', $(this));
				var $block_left = $('.mega-block-left', $(this));
					$block_left.width(left_width + '%');
				var $block_right = $('.mega-block-right', $(this));
					$block_right.width(right_width + '%');
					$cat_mega.width(cat_width + '%');
				var wcolumns  = wchil*columns;
					if(custom){
						var wTopMega = wcolumns + (left_width*wcolumns)/cat_width + (right_width*wcolumns)/cat_width
						if(wTopMega > maxW) wTopMega = maxW;
						$('.content-mega-horizontal',$(this)).width(wTopMega);
					} else {
						if(wcolumns > maxW)	wcolumns = Math.floor(maxW / wchil)*wchil;
						$('.content-mega-horizontal',$(this)).width(wcolumns);	
					} 
					$children.each(function(idx) {
						if(idx % columns ==0 && idx != 0)   $(this).css("clear", "both");
					});
			} else {
				var wcolumns 	= wchil*columns;
				if(wcolumns > maxW)	wcolumns = Math.floor(maxW / wchil)*wchil;
				$('.content-mega-horizontal',$(this)).width(wcolumns);	
			}

		});

		function setReponsive($window){
			if (767 <= $window){
				jQuery('.nav-mobile').hide();
				var $navtop = $('.level0', $content);
			    $navtop.hover(function(){
			    	var wrapper 		= $('.container');
			       	var postionWrapper 	= wrapper.offset();
			       	var wWrapper 		= wrapper.width();  	/*include padding border*/
			       	var wMega   		= $('.level-top-mega', this).outerWidth(); /*include padding + margin + border*/
			       	var actualWidth 	= $('.level-top-mega', this).width(); 		/*no padding, margin, border*/
			       	var extWidth      	= wMega - actualWidth;
			       	var postionMega 	= $(this).offset();
			       	var margin_top 		= 10; // set in config
			       	var xTop 			= postionMega.top  - postionWrapper.top + margin_top;
			       	var xLeft 			= wWrapper - wMega - (wWrapper - wrapper.width())/2;
			       	var xLeft2 			= postionMega.left - postionWrapper.left;
			       	if(xLeft > xLeft2) xLeft = xLeft2;
			       	var topMega = $(this).find('.level-top-mega');
			       	if(topMega.length){
			       		// topMega.css('top',xTop);
			       		topMega.css('left',xLeft);
			       		$(this).addClass('over');
			       	}
			    },function(){
			       $(this).removeClass('over');
			    })
			}
		}

	})('.magicmenu');

});

