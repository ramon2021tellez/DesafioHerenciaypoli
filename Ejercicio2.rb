module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end 
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end 
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end
#Ejercicio2 crear clase animal , atributo nombre y getter
class Animal
    attr_reader :nombre
    def initialize(nombre)
      @nombre = nombre
    end
end
#crear clase ave , mamifero e insecto  , heredan de animal
class Ave < Animal
end

class Mamifero < Animal  
end

class Insecto < Animal  
end
#crear clase pinguino , paloma y pato , heredan de ave
class Pinguino < Ave
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
    include Alimentacion::Herbivoro
end
#crear clase perro ,gato y Vaca , heredan de mamifero 
class Perro < Mamifero
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end
#crear clase Mosca  , Mariposa y Abeja , heredan de Insecto
class Mosca < Insecto
    include Habilidades::Volador
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end
# se incluyen los modulos en cada subclase