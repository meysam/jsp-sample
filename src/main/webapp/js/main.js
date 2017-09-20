document.addEventListener('DOMContentLoaded', function () {

    var page = document.getElementsByClassName('page')[0]
    var sidePop = document.getElementsByClassName('side-pop')[0]
    var sideCancel = document.getElementById('side-cancel')
    
    sideCancel.addEventListener('click',function(){
        sidePop.classList.add('hidden')
    });


});