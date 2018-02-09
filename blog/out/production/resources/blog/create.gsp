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
                <p>Feeling like writting something??????</p>

                <g:if test="${flash.message}">
                    <div class="alert alert-info" role="alert">${flash.message}</div>
                </g:if>


                <g:form controller="blog" action="save">
                    <div class = "row">
                        <!-- Holds form element together form-group-->
                        <div class = "form-group col-lg-4">
                            <label> Title:</label>
                            <input type= "text" class = "form-control" name = "title" placeholder = "Please Enter the title of blog" />

                        </div>

                        <div class = "form-group col-lg-4">
                            <label> Author's Name:</label>
                            <input type= "text" class = "form-control" placeholder="Please enter the author name" name = "author"/>
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