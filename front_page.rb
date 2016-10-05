class FrontPage
	def call env
	    [200, {"Content-Type" => "text/html"}, [<<MAIN_PAGE_CONTENTS
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Basic Ruby Application</title>


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

<section class='container'>
          <hgroup>
            <h1>Welcome to Chris's Demo Application</h1>
          </hgroup>


        <div class="row">
          <section class='col-xs-12 col-sm-6 col-md-6'>
            <section>
              <h2>Basic Functions</h2>
                <p>
                  There are some basic questions available at the <a href="./basic_questions">basic questions page</a>.
                </p>

<ol>
  <li>From the Web Console homepage, navigate to your project</li>
  <li>Click on Browse &gt; Builds</li>
  <li>From the view for your Build click on the button to copy your GitHub webhook</li>
  <li>Navigate to your repository on GitHub and click on repository settings &gt; webhooks</li>
  <li>Paste your webhook URL provided by OpenShift &mdash; that's it!</li>
</ol>
<p>After you save your webhook, if you refresh your settings page you can see the status of the ping that Github sent to OpenShift to verify it can reach the server.</p>
<p>Note: adding a webhook requires your OpenShift server to be reachable from GitHub.</p>


			<h2>Health</h2>
				<p>Application health can be monitored at <a href="./health">this url.</a></p>
				
				<p>This functionality can be stymied by clicking <a href="./health_hider">here.</a></p>

				<p>When running in OpenShift, the pod name will display here: #{ENV["HOSTNAME"]}</p>
 
      </section>
          </section>
          <section class="col-xs-12 col-sm-6 col-md-6">

                <h2>Basic workflow</h2>
                
                <h3>Local Changes</h3>
                <p>The basic idea is that a developer would still follow her same basic procedure of making changes locally.  As this is a rack application I used <a href="http://rubylearning.com/blog/2013/04/02/whats-rack/">rackup</a> to test my application locally. </p>

                <h3>Command Line</h3>
                <p>With the <a href="http://docs.openshift.org/latest/cli_reference/overview.html">OpenShift command line interface</a> (CLI), you can create applications and manage projects from a terminal.</p>

<pre># Create a project and application
$ oc new-project cop-cloud
$ oc new-app openshift/ruby-20-centos7~https://github.com/chriskretler/ruby-ex
# Commit your changes and push to OpenShift
$ git commit -a -m 'Some commit message'
$ git push
$ oc logs &lt;your pod name goes here&gt;
# if your pod is crashing frequently, append a -p after the pod name to get the logs.</pre>
                
                <h3>Web Console</h3>
                <p>You can use the Web Console to view the state of your application components and launch new builds.</p>


          </section>
        </div>

        <footer>
          <div class="logo"><a href="https://www.openshift.com/"></a></div>
        </footer>
</section>


</body>
</html>
MAIN_PAGE_CONTENTS
	    ]]
	end
end
