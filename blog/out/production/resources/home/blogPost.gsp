<!DOCTYPE html>
<html>
<head>
    <title>Blog</title>
    <asset:stylesheet src="bootstrap.css"/>
    <meta name="layout" content="designlayout"/>
</head>
<body>

<div class = "container">

    <g:link controller="blog" action="create">Create a blog....</g:link>

    <div class = "row">
        <div class = "col-sm-12 col-md-12 col-lg-12">
            <!--  Source for the picture
				https://www.google.com/search?q=london+pictures&tbm=isch&source=iu&ictx=1&fir=D2Aq-K1NwsdLEM%253A%252C9f3XtcUguxZdfM%252C_&usg=__sflLLMy7-hpEsiRN_2b0bqQ7RCQ%3D&sa=X&ved=0ahUKEwjPoYj5xeTYAhUV6WMKHQCEC08Q9QEIKTAA#imgrc=oTzEynyfn02HJM: -->
            <h2>London</h2>
            <p>London is the capital city of England.</p>
            <p>One of the world's most visited cities, London has something for everyone: from history and culture to fine food and good times.</p>
            <p>It is the most populous city in the United Kingdom,
            with a metropolitan area of over 13 million inhabitants.</p>
            <asset:image src="london.jpg" class = "img-responsive"/>
        </div>
    </div>
    <div class = "row">
        <div class = "col-sm-12 col-md-12 col-lg-12">
            <!--  Source for the picture
				https://www.google.com/search?q=paris+pictures&tbm=isch&source=iu&ictx=1&fir=92oPPGNwFzmNHM%253A%252CVvSI2FVaJB-uaM%252C_&usg=__66CfZmxz_H73592qVmBK8RGiIoo%3D&sa=X&ved=0ahUKEwjPnte3y-TYAhUI9GMKHdNGAMoQ9QEIKTAA#imgrc=Js4SBzGSGZodwM:
				-->
            <h2>Paris</h2>
            <p>Paris is the capital of France.</p>
            <p>The Paris area is one of the largest population centers in Europe,
            with more than 12 million inhabitants.</p>
            <asset:image src="paris.jpg" class = "img-responsive" width = "100%"/>
        </div>
    </div>

    <div class = "row">
        <div class = "col-sm-12 col-md-12 col-lg-12">
            <!--  Source for the picture
				https://www.google.com/search?q=tokyo+pictures&tbm=isch&source=iu&ictx=1&fir=mtMOY1Y_3WUe6M%253A%252Cqy2kLnWOXowlAM%252C_&usg=__q3pLohHBxOqz93KqJ9_JfzN9-XM%3D&sa=X&ved=0ahUKEwjX5eWUzOTYAhVC3mMKHSrpBvQQ9QEIKTAA#imgrc=mtMOY1Y_3WUe6M:
				-->
            <h2>Tokyo</h2>
            <p>Tokyo is the capital of Japan.</p>
            <p>It is the center of the Greater Tokyo Area,
            and the most populous metropolitan area in the world.</p>
            <asset:image src="tokyo.jpg" class = "img-responsive" width= "100%"/>
        </div>
    </div>

</div>
</body>
</html>
