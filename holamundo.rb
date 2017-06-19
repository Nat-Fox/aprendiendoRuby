####################### Hola Mundo #######################
puts "Hola mundo"

####################### Math #######################
# ** -> elevado
a = 3 ** 2
b = 4 ** 2

# modulo Math
puts Math.sqrt(a+b);

####################### bucles y metodos #######################
# definir un metodo de nombre h
def h
# cuerpo del metodo
    puts "Hola mundo"
# terminamos de definir el metodo
end 
# llamamos al metodo
h()

####################### metodos y parametros #######################
def h(nombre)
    #{nombre} -> forma de ruby para insertar algo en un string
    puts "Hola #{nombre}"
end

h ("Nat");

####################### Reservando espacios en un string #######################
def h (nombre = "Mundo")
    puts "Hola #{nombre.capitalize}"
end

h ("gato")

####################### clases #######################
####################### modificacion de clases #######################
class Anfitrion
    # Permite modificar, no cambia los que ya existan pero afecta a los nuevos que puedas crear
    attr_accessor :nombre

    def initialize(nombre = "Mundo")
        @nombre = nombre
    end

    def decir_hola
        puts "Hola #{@nombre}"
    end

    def decir_adios
        puts "Adios #{@nombre}"
    end
end

a = Anfitrion.new('gato2')
a.decir_hola

# mostrar solo los metodos que yo cree para la clase anfitrion
puts Anfitrion.instance_methods(false);
# muestra que sabe decir la clase (a que metodo responde)
puts a.respond_to?("decir_hola")
# convertir a string viene por defecto en las clases
puts a.respond_to?("to_s")

b = Anfitrion.new("raton")
b.decir_hola

b.nombre = "Anastasia"
b.decir_hola
