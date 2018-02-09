<html>
<head>
    <title>Home</title>
    <asset:stylesheet src="bootstrap.css"/>
    <meta name="layout" content="designlayout"/>
</head>
<body>

<!-------------------------------Discussed and learned bootstrap in group with Alankar Pokhrael, Kaushal Wagle and Amar Shrestha ---------------------------->

<!-- Learned mostly from notes online and this video:  https://www.youtube.com/watch?v=Ct7APU7t-ts -->
<!--------------------------------------------------- The main container that holds contents of webpage starts here -------------------------------->
<div class = "container">
    <div class = "box">
        <div class = "row">
            <div class = "col-lg-12">
                <hr>
                <h2 class = "intro-text text-center">Welcome To
                    <strong>Awesomeness!!!</strong
                </h2>
                <hr>
            </div>
        </div>
    </div>
    <!---------------------------------------------------- Here Starts the login form ----------------------------------------------------------------------------->
    <!-- got the idea on gylphicon from here: https://getbootstrap.com/docs/3.3/components/ -->
    <!-- Learned button classes and types from here: https://www.w3schools.com/bootstrap/bootstrap_ref_css_buttons.asp -->
    <!-- Learned modal from here : https://v4-alpha.getbootstrap.com/components/modal/ -->
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-heading">
                <h2 class="text-center">Login</h2>
            </div>
            <hr />
            <div class="modal-body">
                <form role="form">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-user"></span>
                            </span>
                            <input type="text" class="form-control" placeholder="User Name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </span>
                            <input type="password" class="form-control" placeholder="Password" />

                        </div>

                    </div>

                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-success btn-lg">Login</button>
                        <a href="#" class="btn btn-link">forget Password</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-------------------------------------------------------------------------end of login form ------------------------------------------------------------>

    <!---------------------------------------------------- start of home content -------------------------------------------------------------------------->

    <div class = "row">
        <div class = "col">
            <div class = "panel panel-title">
                <div class= "panel-body text-center">
                    <p>Here are some Links to our recent blogs.</p>
                </div>
            </div>
        </div>
    </div>

    <div class = "row">
        <div class = "col-sm-6 col-md-4 col-lg-4">
            <div class = "panel panel-default">
                <div class= "panel-body">
                    <p> Welcome to the Travel Blog. This is a testing website. Jump to blog about <g:link controller="home" action="blogPost">London.</g:link> </p>
                </div>
            </div>
        </div>
        <div class = "col-sm-6 col-md-4 col-lg-4">
            <div class = "panel panel-default">
                <div class= "panel-body">
                    <p> Welcome to the Travel Blog. This is a testing website. Jump to blog about <g:link controller="home" action="blogPost">Paris.</g:link>  </p>
                </div>
            </div>
        </div>
        <div class = "col-sm-6 col-md-4 col-lg-4">
            <div class = "panel panel-default">
                <div class= "panel-body">
                    <p> Welcome to the Travel Blog. This is a testing website.  Jump to blog about <g:link controller="home" action="blogPost">Tokyo.</g:link></p>
                </div>
            </div>
        </div>
    </div>


    <table>
        <tr>
            <th>Title</th>
        </tr>

        <g:each in="${blogList}" var="blog">
            <tr>
                <td>${blog.title}</td>
            </tr>
        </g:each>
    </table>
    <!----------------------------------------------------------------------- end of content------------------------------------------->

</div>

<!---------------------------------------------------------end of main container ------------------------------------------------------>

</body>
</html>
