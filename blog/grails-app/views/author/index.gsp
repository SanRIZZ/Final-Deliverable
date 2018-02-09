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
                <h2 class = "intro-text text-center">Edit
                    <strong>Author</strong></h2>
                <hr>

                <div class = "navbar navbar-default" role = "navigation">
                    <ul class = "nav navbar-nav">
                        <li><g:link controller="author" action="create">Create Author</g:link></li>
                        <li><g:link controller="author" action="Edit">Edit Author</g:link></li>
                        <li><g:link controller="author" action="list">List Author</g:link></li>
                        <li><g:link controller="author" action="detail">Author details</g:link></li
                    </ul>
                </div>

                <g:if test="${flash.Message}">
                    <div class="alert alert-info" role="alert">${flash.Message}</div>
                </g:if>
                <g:if test="${authorList}">
                    <g:each in="${authorList}" var="auth">
                        <p>${auth.firstName} ${auth.lastName}</p>
                    </g:each>
                </g:if>
                <g:elseif test = "${auth}">
                    <p>First Name: ${auth.firstName}</p>
                    <p>Last Name: ${auth.lastName}</p>
                    <p>Phone Number: ${auth.phoneNumber}</p>
                    <p>Email: ${auth.email}</p>
                </g:elseif>
            </div>
        </div>
    </div>
</div>
</body>
</html>