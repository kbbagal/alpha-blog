# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.create(title: "This is article 1", description: "These are the details for article 1")
Article.create(title: "This is article 2", description: "These are the details for article 2")
Article.create(title: "This is article 3", description: "These are the details for article 3")
Article.create(title: "This is article 4", description: "These are the details for article 4")

User.create(username: "kbbagal", passsword: "123")