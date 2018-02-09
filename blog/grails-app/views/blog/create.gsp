<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="designlayout"/>
    <title>Create Your Blog</title>
    <asset:stylesheet src="bootstrap.css"/>
</head>
<body>
<!--------------------------------------------------- The main container that holds contents of webpage starts here -------------------------------->
<div class = "container">

    <div class = "box">
        <div class = "row">
            <div class = "col-lg-12">
                <h2 class = "intro-text text-center">Create
                    <strong>Blog</strong></h2>
                <hr>
                <p>Feeling like writting something??????</p>

                <g:if test="${flash.Message}">
                    <div class="alert alert-info" role="alert">${flash.Message}</div>
                </g:if>


                <g:form controller="blog" action="save">
                    <div class = "row">
                        <!-- Holds form element together form-group-->
                        <div class = "form-group col-lg-4">
                            <label> Title:</label>
                            <input type= "text" class = "form-control" name = "title" placeholder = "Please Enter the title of blog" />

                        </div>

                        <div class = "form-group col-lg-4">
                            <label>Select Author:</label>
                            <select name="blogAuthor" class="form-control">
                                <g:each in="${authorList}" var="auth">
                                    <option value="${auth.id}">${auth.firstName + " " + auth.lastName}</option>
                                </g:each>
                            </select>
                        </div>

                        <div class = "form-group col-lg-4">
                            <label>Blog Tag:</label>
                            <input type= "text" class = "form-control" name="tag" placeholder="Please enter the tag or genre">
                        </div>

                        <div class = "form-group col-lg-4">
                            <label>Image Url:</label>
                            <input type= "text" class = "form-control" name="imgUrl" placeholder="Please enter url if you want to add an image">
                        </div>

                        <div class = "form-group col-lg-12">
                            <label>Content:</label>
                            <textarea class = "form-control" rows= "6" placeholder="Your Content goes here" name ="content"></textarea>
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