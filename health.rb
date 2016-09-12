class Health

	def call(env)
		[200, { "Content-Type" => "text/html" }, ["1"]]
	end
	
end