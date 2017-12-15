# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#(:name, :aprox_num, :address, :contact_number, :cars_type, :warranty)
concess1 = Concess.create(name: "Concesionario Toyota", description: "De los mejores concesionarios", warranty: true)
concess2 = Concess.create(name: "Concesionario Motorola", description: "De los mejores concesionarios", warranty: true)
puts "Concesarios creados"

#(:seria_num, :model, :brand, :year, :color, :transmission, :doors_num, :fuel, :concess_id)
car1 = Vehicle.create(brand: "Toyota", model: "Corolla", color: "purple", concess: concess2)
car2 = Vehicle.create(brand: "Audi", model: "R8", color: "blue", concess: concess1)
car3 = Vehicle.create(brand: "Mercedez", model: "Benz", color: "green", concess: concess2)
car4 = Vehicle.create(brand: "Jeep", model: "Grand Cherokee", color: "blue", concess: concess1)
car5 = Vehicle.create(brand: "Chevrolet", model: "Malibu", color: "red", concess: concess2)
puts "Vehiculos creados"

#(:body, :commented, :commented_type)
com1 = Comment.create(body: "Comentario #1", commented: car1)
com2 = Comment.create(body: "Comentario #2", commented: concess1)
com3 = Comment.create(body: "Comentario #3", commented: car2)
com4 = Comment.create(body: "Comentario #4", commented: concess2)
com5 = Comment.create(body: "Comentario #5", commented: car3)
com6 = Comment.create(body: "Comentario #6", commented: concess1)
com7 = Comment.create(body: "Comentario #7", commented: car4)
puts "Comentarios creados"