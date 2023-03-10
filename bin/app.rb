require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

# get '/' do
#   return 'Hello, Sinatra! I am here!'
# end

# get '/hello/' do
#   greeting = params[:greeting] || "Hi There"
#   erb :index, :locals => {'greeting' => greeting}
# end

get '/' do
    return 'Hello world'
end

get '/hello/' do
    erb :hello_form
end

post '/hello/' do
    greeting = params[:greeting] || "Hi There"
    name = params[:name] || "Nobody"

    erb :index, :locals => {'greeting' => greeting, 'name' => name}
end

# gem install sinatra
# ruby bin/app.rb
# [sudo] gem install rerun
# rerun 'ruby bin/app.rb'
