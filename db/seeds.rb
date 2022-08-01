# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(
  email: "isaac@admin.com", 
  password: "password",
  password_confirmation: "password"
)

bookmarks = Bookmark.create([
  {
    url: "https://bitacoraml.com",
    title: "Bitácora ML",
    description: "Bitacora personal de Machine Learning",
    is_private: false,
    read_later: true,
    user: user
  },
  {
    url: "https://comunidadti.com",
    title: "Comunidad TI",
    description: "Artículos y tutoriales sobre programación",
    is_private: false,
    read_later: false,
    user: user
  },
  {
    url: "https://twitter.com",
    title: "Twitter",
    description: "Microbloggins",
    is_private: true,
    read_later: false,
    user: user
  },
])
