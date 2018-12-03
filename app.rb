class Web
    #esta función correrá por defecto
   def call (env)
    @status=200
    @headers={"Content-Type" => "text/html; charset=utf-8"}
        case env["PATH_INFO"]
        when "/"    
            @body = File.open("public/index.html", File::RDONLY).read
        else
            puts "Hubo un error"
            @body="<p> No hay una página disponible en este momento con ese contenido </p>"
            @status=400
        end

        
    	[@status, @headers, [@body]]  #return
   end
end