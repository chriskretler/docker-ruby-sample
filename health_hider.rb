require 'rack/urlmap'
require 'rack/rewrite'

class HealthHider

	def initialize()
	 # howdy
	end

	def call env
	
		#system "mv /home/rack/body/35 /home/rack/body/36"
		system "sed -i s/1/10/g /app/rack/body/35/6a192b7913b04c54574d18c28d46e6395428ab"
		#Rack::URLMap.new({
		#	'/health/broken' => 'health_backup.rb'
		#})
		#Rack::Rewrite.rewrite 'health',	'health_broken'
	
		[200, { "Content-Type" => "text/html" }, ["Health page cache has been modified."]]
		
	end
	
end
