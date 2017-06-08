# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create!(name: "Stark", words:"Winter is Coming", lord: "Sansa Stark", seat: "Winterfell",img_url:"stark.png")
lannister = House.create!(name: "Lannister", words: "Hear Me Roar!", lord: "Cersei Lannister", seat: "King's Landing", img_url: "lannister.png")
tyrell = House.create!(name: "Tyrell", words: "Growing Strong", lord:"Olenna Tyrell", seat: "Highgarden", img_url: "tyrell.png")

jon_snow = Character.create!(name: "Jon Snow", title:"King of the North", is_alive: true, img_url: "jon_snow.jpg",house: stark)
cersei = Character.create!(name: "Cersei Lannister", title: "Queen of the Andals and the First Men", is_alive: true, img_url: "cersei.jpg", house: lannister)
olenna = Character.create!(name: "Olenna Tyrell", title: "The Queen of Thorns", is_alive: true, img_url: "olenna.jpg", house: tyrell)
margaery = Character.create!(name: "Margaery Tyrell", title: "Queen Consort", is_alive: false, img_url: "margaery.png", house: tyrell)
