# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create!(name: "Stark", words:"Winter is Coming", lord: "Sansa Stark", seat: "Winterfell",img_url:"http://gameofthrones.wikia.com/wiki/House_Stark?file=House-Stark-Main-Shield.PNG")
lannister = House.create!(name: "Lannister", words: "Hear Me Roar!", lord: "Cersei Lannister", seat: "King's Landing", img_url: "http://gameofthrones.wikia.com/wiki/House_Lannister?file=House-Lannister-Main-Shield.PNG")
tyrell = House.create!(name: "Tyrell", words: "Growing Strong", lord:"Olenna Tyrell", seat: "Highgarden", img_url: "http://gameofthrones.wikia.com/wiki/House_Tyrell?file=House-Tyrell-Main-Shield.PNG")

jon_snow = Character.create!(name: "Jon Snow", title:"King of the North", is_alive: true, img_url: "http://gameofthrones.wikia.com/wiki/Jon_Snow?file=GoT-Sn7_FirstLook_09.jpg",house: stark)
cersei = Character.create!(name: "Cersei Lannister", title: "Queen of the Andals and the First Men", is_alive: true, img_url: "http://gameofthrones.wikia.com/wiki/Cersei_Lannister?file=Queen_Cersei_Main_The_winds_of_Winter.jpg", house: lannister)
olenna = Character.create!(name: "Olenna Tyrell", title: "The Queen of Thorns", is_alive: true, img_url: "http://gameofthrones.wikia.com/wiki/Olenna_Tyrell?file=Olenna_season_6_a.jpg", house: tyrell)
margaery = Character.create!(name: "Margaery Tyrell", title: "Queen Consort", is_alive: false, img_url: "http://gameofthrones.wikia.com/wiki/Margaery_Tyrell?file=Margaery_Tyrell_S6.png", house: tyrell)
