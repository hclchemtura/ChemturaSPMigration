function testEmail(src) {
    var emailReg = "^[\\w-_\.]*[\\w-_\.]\@[\\w]\.+[\\w]+[\\w]$";
    var regex = new RegExp(emailReg);
    return regex.test(src);
}

function validateContactUs() {
    alert("HiTest");

    var subject = $('[id*=dldSubject]').val();    var name = $('[id*=txtName]').val();
    var company = $('[id*=txtCompany]').val();
    var email = $('[id*=txtEmail]').val();
    var phone = $('[id*=txtPhone]').val();
    var message = $('[id*=txtMessage]').val();
    var messagetext = $("#tbxMessageText").val();

    var errortext = "";
    if (subject == "0") {
        errortext += "Please enter a Subject\n";
    }
    if (name == "") {
        errortext += "Please enter your Name\n";
    }
    if (company == "") {
        errortext += "Please enter your Company Name\n";
    }

    if (email == "") {
        errortext += "Please enter your E-Mail Address\n";
    }
    else if (!testEmail(email.value)) {
        errortext += "Please enter a valid E-Mail Address\n";
    }

    if (phone == "") {
        errortext += "Please enter your Phone Number\n";
    }
    if (message == "") {
        errortext += "Please enter a Message\n";

    }
    if (message.length > 8000) {
        errortext += "Sorry, your message must be limited to 8000 characters\n";
    }
    
    if (errortext.length > 0) {
        alert(errortext);
        return false
    }
    else {
        messagetext.value = message.value;
        return true;
    }

    return false;
}