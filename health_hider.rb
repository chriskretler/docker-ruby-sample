require 'rack/urlmap'
require 'rack/rewrite'

class HealthHider

	def initialize()
	 # howdy
	end

	def call env
	
		system "mv health.rb health-backup.rb"
		#Rack::URLMap.new({
		#	'/health/broken' => 'health_backup.rb'
		#})
		#Rack::Rewrite.rewrite 'health',	'health_broken'
	
		[200, { "Content-Type" => "text/html" }, ["1"]]
		
	end
	
end