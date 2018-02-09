<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="designlayout"/>
    <title>Update Content</title>
    <asset:stylesheet src="bootstrap.css"/>
</head>

<body>
<!--------------------------------------------------- The main container that holds contents of webpage starts here -------------------------------->
<div class="container">

    <div class="box">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="intro-text text-center">Edit
                    <strong>Blog</strong></h2>
                <hr>

                <p>Feeling like writting something??????</p>

                <g:if test="${flash.Message}">
                    <div class="alert alert-info" role="alert">${flash.Message}</div>
                </g:if>


                <g:if test="${blogs}">
                    <g:form controller="blog" action="update">
                        <div class="row">
                            <g:hiddenField name="id" value="${blogs.id}" />
                            <div class="form-group col-lg-4">
                                <label>Title:</label>
                                <input type="text" class="form-control" name="title" value="${blogs.title}"
                                       placeholder="Please Enter the title of blog"/>
                            </div>

                            <div class="form-group col-lg-4">
                                <label>Choose Author:</label>
                                <select name="author.id" class="form-control" id="Author">
                                    <g:each in="${authorList}" var="auth">
                                        <option value="${auth.id}">${auth.firstName + " " + auth.lastName}</option>
                                    </g:each>
                                </select>
                            </div>

                            <div class="form-group col-lg-4">
                                <label>Blog Tag:</label>
                                <input type="text" class="form-control" value="${blogs.tag}" name="tag"
                                       placeholder="Please enter the tag or genre">
                            </div>

                            <div class="form-group col-lg-4">
                                <label>Image Url:</label>
                                <input type="text" class="form-control" name="imgUrl" value="${blogs.imgUrl}"
                                       placeholder="Please enter url if you want to add an image">
                            </div>

                            <div class="form-group col-lg-12">
                                <label>Content:</label>
                                <textarea class="form-control" rows="6" placeholder="Your Content goes here" name="content">${blogs.content}</textarea>
                            </div>

                            <div class="form-group col-lg-12">
                                <button type="submit" class="btn btn-default">Submit</button>
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