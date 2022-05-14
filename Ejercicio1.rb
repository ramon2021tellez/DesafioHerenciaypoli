#Ejercicio 1 utilizando principios de polimorfismo, refactorizar 
#redefinir clase Person
class Person
# metodo constructor nombre y apellido
    def initialize(first, last)
        @first_name = first
        @last_name = last   
    end

end
#clase student hereda de Person
class Student < Person
    def talk
       "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end  
end
#clase Teacher hereda de Person
class Teacher < Person
    def talk
        "Bienvenidos a la clase de programación con Ruby!"
    end
    
    def introduce
        "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end  
end
#clase Parent hereda de Persona
class Parent < Person
    def talk
        "Aquí es la reunión de apoderados?"
    end

    def introduce
        "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end
#demostracion student
puts "Estudiante"
studentuno=Student.new('ramon','miranda')
puts studentuno.talk
puts studentuno.introduce
#demostracion Teacher
puts "Profesor"
teacheruno=Teacher.new('ramon','miranda')
puts teacheruno.talk
puts teacheruno.introduce
#demostracion Parent
puts "Pariente"
parentuno=Parent.new('ramon','miranda')
puts parentuno.talk
puts parentuno.introduce
