<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="designlayout"/>
    <title>Blog</title>
    <asset:stylesheet src="bootstrap.css"/>
</head>

<body>
<div class="container">
    <g:link action="create" controller="blog">Create a Blog!</g:link>
    <div class="row">
        <g:each var="b" in="${blogList}">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <h2>${b.title}</h2>
                <p>${b.content}</p>
            </div>
        </g:each>
    </div>
</div>
</body>
</html>

