class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }
  set :method_override, true

  enable :sessions


  get '/' do
    erb :index
  end
end
