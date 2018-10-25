class HomeworkController<Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }


  configure:development do
    register Sinatra::Reloader
  end

  get "/" do
    @title = "Homepage For Food"
    erb :'../Views/homepage'
  end

get '/:id' do
  id = params[:id]
case
when (id=='chinese')
  erb :'../views/china'
  # @title = "Chinese Food"
when (id=='italian')
  erb :'../views/italy'
    @title = "Italian Food"
when (id=='turkish')
  erb :'../views/turkey'
    @title = "Turkish Food"
when (id=='mexican')
  erb :'../views/mexico'
    @title = "Mexican Food"
when (id=='polish')
  erb :'../views/poland'
    @title = "Polish Food"

end
end
end
