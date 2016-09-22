require 'rack/lobster'
require 'rack/urlmap'
require './front_page'
require './basic_questions'
require './health_hider'
require './health_backup'
require './health'

map '/health' do
  run Health.new
end

map '/health_hider' do
  run HealthHider.new
end

map '/health_broken' do
  run HealthBackup.new
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
