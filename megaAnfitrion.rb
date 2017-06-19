class MegaAnfitrion
    attr_accessor :nombres

    # creo el objeto
    def initialize(nombres = "Mundo")
        @nombres = nombres
    end

    # decir hola a todos
    def decir_hola
        # si es que es nulo -> ?
        # si es nil no hay nadie a quien saludar
        if @nombres.nil?
            puts "..."
        # preguntamos si la lista tiene each, si tiene podemos iterar
        elsif @nombres.respond_to?("each")        
            # la variable entre los pipes es el parametro de la funcion
            @nombres.each do |nombre| 
                puts "hola #{nombre}"
            end
        else
            puts "Hola #{@nombres}"
        end    
    end

    #decir adios a todos
    def decir_adios
        if @nombres.nil?
            puts "..."        
        elsif @nombres.respond_to?("join")
        # junta los elementos de la lista usando la coma como separador
            puts "Adiós #{@nombres.join(", ")}. Vuelvan pronto."
        else
            puts "Adiós #{@nombres}. Vuelve pronto."
        end
    end
end

if  __FILE__ ==  $0
    ma = MegaAnfitrion.new
    ma.decir_hola
    ma.decir_adios

    # cambiar el nombre a smaug
    ma.nombres = "Smaug"
    ma.decir_hola
    ma.decir_adios

    # cambiar el nombre a un array de nombres
    ma.nombres = ["Anastasia", "Sauron", "Bicho"]
    ma.decir_hola
    ma.decir_adios

    # cambiarlo a nil
    ma.nombres = nil
    ma.decir_hola
    ma.decir_adios
end