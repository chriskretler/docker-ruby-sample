require 'rack/urlmap'
require 'rack/rewrite'

class HealthHider

	def initialize()
	 # howdy
	end

	def call env
	
		#system "mv health.rb health_backup.rb"
		system "sed -i s/HealthBackup/WasHealthBackup/g health_backup.rb"
		#Rack::URLMap.new({
		#	'/health/broken' => 'health_backup.rb'
		#})
		#Rack::Rewrite.rewrite 'health',	'health_broken'
	
		[200, { "Content-Type" => "text/html" }, ["1"]]
		
	end
	
end
