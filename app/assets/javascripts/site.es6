'use strict';

var pageReady = function(){
    
    setInterval(function(){
        $.ajax({
            type:'GET',
            url:'/questsesses/'+$('.sess').data('session')+'/questions/',
            success: function(data){
                console.log('updated')
            }
        });
    }, 5000);
	
};

$(document).ready(pageReady);
$(document).on('page:load', pageReady);