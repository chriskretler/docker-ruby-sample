Chris’s Ruby Sample App for OpenShift
=====================================

This is a demo application created using [these directions](https://github.com/openshift/ruby-ex/blob/master/README.md#installation).  

To test locally, use rackup, then push to github.  Assuming that the webhook was correctly created within github, your changes should push to OpenShift immediately.

Some methods tried for disabling the page at run-time:
	- cache and manipulation.  Modifying the content within the cache invalidates it, and it is not delivered back to the browser.  Isn't this what we want?

###License
This code is dedicated to the public domain to the maximum extent permitted by applicable law, pursuant to [CC0](http://creativecommons.org/publicdomain/zero/1.0/).
