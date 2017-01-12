require 'rack/lobster'
require './front_page'
require './basic_questions'
require './health'

map '/health' do
  run Health.new
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
