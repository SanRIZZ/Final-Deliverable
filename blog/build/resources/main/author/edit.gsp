<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="designlayout"/>
    <title>Author List</title>
    <asset:stylesheet src="bootstrap.css"/>
</head>
<body>

<div class = "container">

    <div class = "box">
        <div class = "row">
            <div class = "col-lg-12">
                <h2 class = "intro-text text-center">Create
                    <strong>Author</strong></h2>
                <hr>
                <p>Wanna start your own blog??</p>

                <g:if test="${flash.Message}">
                    <div class="alert alert-info" role="alert">${flash.Message}</div>
                </g:if>

                <g:if test="${author}">
                <g:form controller="author" action="update">
                    <div class = "row">
                        <g:hiddenField name="id" value="${author.id}" />

                        <div class = "form-group col-lg-4">
                            <label> First Name:</label>
                            <input type= "text" class = "form-control" value="${author.firstName}" placeholder = "Please enter the first name" name = "firstName" />

                        </div>

                        <div class = "form-group col-lg-4">
                            <label> Last Name:</label>
                            <input type= "text" class = "form-control" value="${author.lastName}"   placeholder="Please enter the last name" name = "lastName"/>
                        </div>

                        <div class = "form-group col-lg-4">
                            <label> Phone Number:</label>
                            <input type= "number" class = "form-control" value="${author.phoneNumber}"  placeholder="Phone Number" name = "phoneNumber"/>
                        </div>

                        <div class = "form-group col-lg-4">
                            <label> Email:</label>
                            <input type= "email" class = "form-control" value="${author.email}"  placeholder="Email" name = "email"/>
                        </div>

                        <div class = "form-group col-lg-12">
                            <button type = "submit" class = "btn btn-default">Submit</button>
                        </div>
                    </div>
                </g:form>
                </g:if>
            </div>
        </div>
    </div>
    <!----------------------------------------------------- end of container ------------------------------->
</div>

</body>
</html>