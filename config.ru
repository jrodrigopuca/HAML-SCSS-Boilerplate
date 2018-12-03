# use Rack::Static, :urls => [""], :root => 'public', :index =>'index.html'
#require_relative 'app' #Traer app.rb
#run Web.new            #correr a la función 

use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}