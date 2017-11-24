# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#(:name, :aprox_num, :address, :contact_number, :cars_type, :warranty)
concess1 = Concess.create(name: "Concesionario #1", aprox_num: 4, address: "Calle cabure", contact_number: "04146958603")
concess2 = Concess.create(name: "Concesionario #2", aprox_num: 3, address: "Calle cabima", contact_number: "04129664338")
puts "Concesarios creados"

#(:seria_num, :model, :brand, :year, :color, :transmission, :doors_num, :fuel, :concess_id)
car1 = Vehicle.create(serial_num: "123123", brand: "Toyota", model: "Corolla", year: "1990", color: "purple", transmission: "automatic", concess: concess2)
car2 = Vehicle.create(serial_num: "234234", brand: "Audi", model: "R8", year: "1991", color: "blue", transmission: "manual", concess: concess1)
car3 = Vehicle.create(serial_num: "345345", brand: "Mercedez", model: "Benz", year: "1992", color: "green", concess: concess2)
car4 = Vehicle.create(serial_num: "456456", brand: "Jeep", model: "Grand Cherokee", year: "1993", color: "blue", transmission: "automatic", concess: concess1)
car5 = Vehicle.create(serial_num: "567567", brand: "Chevrolet", model: "Malibu", year: "1994", transmission: "manual", concess: concess2)
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