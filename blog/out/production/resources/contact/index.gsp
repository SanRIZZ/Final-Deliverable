<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="designlayout"/>
    <title>Contact US</title>
    <asset:stylesheet src="bootstrap.css"/>
</head>
<body>
<!--------------------------------------------------- The main container that holds contents of webpage starts here -------------------------------->
<div class = "container">

    <div class = "box">
        <div class = "row">
            <div class = "col-lg-12">
                <h2 class = "intro-text text-center">Contact
                    <strong>Form</strong></h2>
                <hr>
                <p>Welcome to this bog website. There is the form below to reach to us.</p>

                <g:if test="${flash.message}">
                    <div class="alert alert-info" role="alert">${flash.message}</div>
                </g:if>


                <g:form controller="contact" action="save" name="contactUs">
                    <div class = "row">
                        <!-- Holds form element together form-group-->
                        <div class = "form-group col-lg-4">
                            <label> Name:</label>
                            <input type= "text" class = "form-control" name = "name" placeholder = "Please Enter Full Name" />

                        </div>

                        <div class = "form-group col-lg-4">
                            <label>Email:</label>
                            <input type= "email" class = "form-control" placeholder="abc@example.com" name = "email"/>
                        </div>

                        <div class = "form-group col-lg-4">
                            <label>Phone Number:</label>
                            <input type= "number" class = "form-control" name="phoneNumber" placeholder="123456789">
                        </div>

                        <div class = "form-group col-lg-12">
                            <label>Questions or Comments:</label>
                            <textarea class = "form-control" rows= "6" placeholder="Your Message Here" name ="message"></textarea>
                        </div>

                        <div class = "form-group col-lg-12">
                            <button type = "submit" class = "btn btn-default">Submit</button>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
    <!----------------------------------------------------- end of container ------------------------------->
</div>
</body>
</html>