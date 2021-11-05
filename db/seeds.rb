# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#> Tarea 1 Escribir la creación de 5 nuevos Blogs, con los nombres (Blog 1, Blog 2, Blog 3, Blog 4 y Blog 5)

b = Blog.new
b.name = "Blog 1"
b.description = "description blog 1"
b.save()

b = Blog.new
b.name = "Blog 2"
b.description = "description blog 2"
b.save()

b = Blog.new
b.name = "Blog 3"
b.description = "description blog 2"
b.save()

b = Blog.new
b.name = "Blog 4"
b.description = "description blog 4"
b.save()

b = Blog.new
b.name = "Blog 5"
b.description = "description blog 5"
b.save()

puts "Blogs creados: #{Blog.all.count}"
puts "Tarea 1 Hecho."

#Version acortada con times
#5 times do |t|
  #b = Blog.new
  #b.name = "Blog #{t + 1}"
  #b.description = "description #{t + 1}"
  #b.save()
#end
  

#Tarea 2> Crear publicaciones

p = Post.new
p.title = "Post numero 1"
p.content = "Contenido de la publicacion 1"
p.blog = Blog.where(name: "Blog 1").first
p.save()

p = Post.new
p.title = "Post numero 2"
p.content = "Contenido de la publicacion 2"
p.blog = Blog.where(name: "Blog 1").first
p.save()

p = Post.new
p.title = "Post numero 3"
p.content = "Contenido de la publicacion 3"
p.blog = Blog.where(name: "Blog 2").first
p.save()

p = Post.new
p.title = "Post numero 4"
p.content = "Contenido de la publicacion 4"
p.blog = Blog.where(name: "Blog 2").first
p.save()

p = Post.new
p.title = "Post numero 5"
p.content = "Contenido de la publicacion 5"
p.blog = Blog.where(name: "Blog 3").first
p.save()

p = Post.new
p.title = "Post numero 6"
p.content = "Contenido de la publicacion 6"
p.blog = Blog.where(name: "Blog 3").first
p.save()

p = Post.new
p.title = "Post numero 7"
p.content = "Contenido de la publicacion 7"
p.blog = Blog.where(name: "Blog 4").first
p.save()

p = Post.new
p.title = "Post numero 8"
p.content = "Contenido de la publicacion 8"
p.blog = Blog.where(name: "Blog 4").first
p.save()

p = Post.new
p.title = "Post numero 9"
p.content = "Contenido de la publicacion 9"
p.blog = Blog.where(name: "Blog 5").first
p.save()

p = Post.new
p.title = "Post numero 10"
p.content = "Contenido de la publicacion 10"
p.blog = Blog.where(name: "Blog 5").first
p.save()

#(esta es la versión acortada con el uso de iteraciones)
#5.times do |nblog|
  #2.times do |npost|
    #p = Post.new
    #Post numero 1-1
    #Post numero 1-2
    #Post numero 2-1
    #Post numero 2-2
    #p.title = "Post numero #{nblog+1}-#{npost + 1}"
    #p.content = "Contenido de la publicacion #{npost + 1}"
    #p.blog = Blog.where(name: "Blog #{nblog + 1}").first
    #p.save
  #end
#end

puts "publicaciones: #{Post.all.count}"
puts "tarea 2 Hecho"

# Tarea 3 > Crear mensajes

pp = Post.all.order("created_at asc").first
m = Message.new
m.post = pp
m.author = "Rod Herrera"
m.message = "Hola mundo marte x"
m.save()
#puts m.errors.messages en caso de confirmar validaciones

m = Message.new
m.post = pp
m.author = "Rey William"
m.message = "Hola mundo venus"
m.save()

puts "Mensaje: #{Message.all.count}" 
puts "Tarea 3 hecha."

#Obtener todas las publicaciones para el primer blog.
puts Post.where(blog: Blog.where(name:"Blog 1").first).count

#Post.where(blog: Blog.where(name:"Blog 1").first).count  -----belongs
#Blog.where(name = "Post 1").first.post.count ------has_many

puts "Tarea 4 hecho"

#> Obtener todas las publicaciones para el último blog (ordenadas por titulo en orden descendiente).
puts Post.where(blog: Blog.where(name:"Blog 5").first).order("title desc") #con belongs_to

#Blog.where(name = "Blog 5").first.post.order("title desc)---version has_many

puts "Tarea 5 hecha"

#Tarea 6 > Actualizar el título de la primera publicación.
s = Post.all.first
s.title = "nuevo titulo"
s.save()

puts Post.all.first.title #es mas certero

puts "tarea 6 hecha"


#> Eliminar la tercera publicación (haga que el modelo borre automáticamente todos los mensajes asociados con la tercera publicación cuando la elimines).

Post.where(name:"")


#> Obtener todos los blog.
#> Obtener todos los blog con id menor a 5.
#> Escribir 2 publicaciones para cada Blog.
	