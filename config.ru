require 'rack/lobster'
require 'rack/urlmap'
require 'rack/cache'
require './front_page'
require './basic_questions'
require './health_hider'
require './health'

use Rack::Cache,
  :verbose     => true,
  :default_ttl => 1800,
  :metastore   => 'file:/app/rack/meta',
  :entitystore => 'file:/app/rack/body'

map '/health' do
  run Health.new
end

map '/health_hider' do
  run HealthHider.new
end

map '/lobster' do
  run Rack::Lobster.new
end

map '/' do
  run FrontPage.new
end

map '/basic_questions' do
  run BasicQuestions.new
end
