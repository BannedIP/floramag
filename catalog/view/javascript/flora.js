    //Flora changes
$(function(){
    $('div.product-thumb').hover(function() {$(this).find('div.caption p:first').toggleClass('hidden1');}, function() { $(this).find('div.caption p:first').toggleClass('hidden1');}
    );
    $('div.category_img img')
        .css( {backgroundPosition: "0 0"} )
        .mouseover(function(){
            $(this).stop().animate(
                {top:"-110px"}, 
                {duration:150})
        })
        .mouseout(function(){
            $(this).stop().animate(
                {top:"0"}, 
                {duration:150})
        })
})