

function ShowMessage(message, messagetype) {
   
    var cssclass;
    switch (messagetype) {
        case 'Success':
            cssclass = 'alert-success'
            break;
        case 'Error':
            cssclass = 'alert-danger'
            break;
        case 'Warning':
            cssclass = 'alert-warning'
            break;
        default:
            cssclass = 'alert-info'
    }
    //
    $('#alert_container').append('<div class="alert fixed-bottom ' + cssclass + ' alert-dismissible fade show" role="alert">' + message + '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
    document.getElementById('alert_container').style.display = 'inline';
    window.scrollTo(99, 0);

    //setTimeout(function(){$("#message").hide();},5000);
    setTimeout(function () { document.getElementById('alert_container').style.display = 'none'; }, 5000);
}

function phonenumber(inputtxt) {
    var phoneno = /^\d{12}$/;
    if ((inputtxt.value.match(phoneno))) {
        return true;
    }
    else {
        alert("message");
        return false;
    }
};
