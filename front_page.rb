class FrontPage
	def call env
	    [200, {"Content-Type" => "text/html"}, [<<MAIN_PAGE_CONTENTS
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Basic Docker Application for Ruby</title>


<style>

/*!
 * Bootstrap v3.0.0
 *
 * Copyright 2013 Twitter, Inc
 * Licensed under the Apache License v2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Designed and built with all the love in the world @twitter by @mdo and @fat.
 */

  .logo {
    background-size: cover;
    height: 58px;
    width: 180px;
    margin-top: 6px;
  }
.logo a {
  display: block;
  width: 100%;
  height: 100%;
}
*, *:before, *:after {
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
aside,
footer,
header,
hgroup,
section{
  display: block;
}
body {
  color: #404040;
  font-family: "Helvetica Neue",Helvetica,"Liberation Sans",Arial,sans-serif;
  font-size: 14px;
  line-height: 1.4;
}

html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}
ul {
    margin-top: 0;
}
.container {
  margin-right: auto;
  margin-left: auto;
  padding-left: 15px;
  padding-right: 15px;
}
.container:before,
.container:after {
  content: " ";
  /* 1 */

  display: table;
  /* 2 */

}
.container:after {
  clear: both;
}
.row {
  margin-left: -15px;
  margin-right: -15px;
}
.row:before,
.row:after {
  content: " ";
  /* 1 */

  display: table;
  /* 2 */

}
.row:after {
  clear: both;
}
.col-sm-6, .col-md-6, .col-xs-12 {
  position: relative;
  min-height: 1px;
  padding-left: 15px;
  padding-right: 15px;
}
.col-xs-12 {
  width: 100%;
}
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
  .col-sm-6 {
    float: left;
  }
  .col-sm-6 {
    width: 50%;
  }
}
@media (min-width: 992px) {
  .container {
    width: 970px;
  }
  .col-md-6 {
    float: left;
  }
  .col-md-6 {
    width: 50%;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1170px;
  }
}

a {
  color: #069;
  text-decoration: none;
}
a:hover {
  color: #EA0011;
  text-decoration: underline;
}
hgroup {
  margin-top: 50px;
}
footer {
    margin: 50px 0 25px;
}
h1, h2, h3 {
  color: #000;
  line-height: 1.38em;
  margin: 1.5em 0 .3em;
}
h1 {
  font-size: 25px;
  font-weight: 300;
  border-bottom: 1px solid #fff;
  margin-bottom: .5em;
}
h1:after {
  content: "";
  display: block;
  width: 100%;
  height: 1px;
  background-color: #ddd;
}
h2 {
  font-size: 19px;
  font-weight: 400;
}
h3 {
  font-size: 15px;
  font-weight: 400;
  margin: 0 0 .3em;
}
p {
  margin: 0 0 2em;
  text-align: justify;
}
p + h2 {
  margin-top: 2em;
}
html {
  background: #f5f5f5;
  height: 100%;
}
code {
  background-color: white;
  border: 1px solid #ccc;
  padding: 1px 5px;
  color: #888;
}
pre {
  display: block;
  padding: 13.333px 20px;
  margin: 0 0 20px;
  font-size: 13px;
  line-height: 1.4;
  background-color: #fff;
  border-left: 2px solid rgba(120,120,120,0.35);
  white-space: pre;
  white-space: pre-wrap;
  word-break: normal;
  word-wrap: break-word;
  overflow: auto;
  font-family: Menlo,Monaco,"Liberation Mono",Consolas,monospace !important;
}

</style>

</head>
<body>

<section class='container' style="background-color: #FFA000; color: #041E42">
          <hgroup>
            <h1>Welcome to a Sample Application</h1>
          </hgroup>


        <div class="row">
          <section class='col-xs-12 col-sm-6 col-md-6' style="background-color: #FFC72B; color: #041E42">
            <section >
            
              <h2>Basic Questions</h2>
                  Challenge your knowledge of the University of Michigan's history <a href="./basic_questions">here</a>.
            
              <h2>Useful Links & Documentation</h2>
<ol>
  <li><a href="https://hub.docker.com">Docker Hub</a> contains an amazing number of pre-built images</li>
  <li><a href="https://github.com/docker/labs">This</a> github repo contains tutorials for several languages.</li>
  <li><a href="https://kubernetes.io">Kubernetes</a> is a system which provides health checks, auto-scaling and internal networking for docker containers.</li>  
  <li><a href="https://docs.docker.com/">The documentation center</a> at Docker's website provides links to docker commands and installation guides.</li>
  <li>Docker containers can be run in the cloud in several locations.  One of them is  Amazon's <a href="https://aws.amazon.com/ecs/">ECS</a>.</li>
</ol>

			<h2>Application Health & Other Information</h2>
<ol>
	<li>Application health can be monitored at <a href="./health">this url</a>.</li>
	<li>The server/pod name is: #{ENV["HOSTNAME"]}</li>		
	<li>The value of the ENVVAR variable is: #{ENV["ENVVAR"]}</li>
	<li>The full list of headers sent to a subsequent request can be viewed <a href="./headers">here</a>.</li>
</ol>
 
			</section>
    	</section>
          <section class="col-xs-12 col-sm-6 col-md-6" style="background-color: #FFC72B; color: #041E42">

                <h2>Useful Commands</h2>

<pre># Build from a dockerfile in the local directory.
$ docker build -t {your-docker-tag-name} .

# Build from a dockerfile in a github repository.
$ docker build -t {your-docker-tag-name} https://github.com/chriskretler/nginx-demo

# Run the nginx container from docker hub with port 80 exposed on your local computer.
$ docker run -p 80:80 nginx

# Run your docker container
$ docker run -p 80:80 {your-docker-tag-name}

# List all of your running containers
$ docker ps

# List all images in your current registry
$ docker images
</pre>


          </section>
        </div>
</section>

	<section class='col-xs-12 col-sm-6 col-md-6' >

	
</body>
</html>
MAIN_PAGE_CONTENTS
	    ]]
	end
end
