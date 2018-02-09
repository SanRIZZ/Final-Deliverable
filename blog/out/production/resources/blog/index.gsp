<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="designlayout"/>
    <title>Blog</title>
    <asset:stylesheet src="bootstrap.css"/>
</head>

<body>
<g:each var="b" in="${blogList}">
    <p>Title: ${b.title}</p>

    <p>Author's Name: ${b.author}</p>

    <p></p>
</g:each>
</body>
</html>

