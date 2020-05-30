# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(first_name:"Yuri", last_name:"Gravatá de Azevedo", genre:"m", birthdate:"24-11-1992", cpf:"123.123.123-12", email:"ygravata@gmail.com", password:"testtest")
CityGovernmentAgency.create!(city_name: "Rio de Janeiro")
Branch.create!(email: "camara@legislativa.rj", twitter: "@legrj", website:"www.leg.rj", city_government_agency_id: 1, branch_name:"Câmara Legislativa do Rio de Janeiro" )

    t.text "description"
    t.string "category"
    t.string "status"
    t.string "format"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "city_government_agency_id"
    t.datetime "deadline"
    t.string "title"
    t.boolean "anonymity", default: false
    t.index ["city_government_agency_id"], name: "index_lai_requests_on_city_government_agency_id"
    t.index ["user_id"], name: "index_lai_requests_on_user_id"

LaiRequest.create!(description: "Esse é um pedido formal e complexo. Esse é um pedido formal e complexo. Esse é um pedido formal e complexo. Esse é um pedido formal e complexo. Esse é um pedido formal e complexo. Esse é um pedido formal e complexo. Esse é um pedido formal e complexo.",
                  category: "Transparência", status:"Editando", format:"pdf", user_id: 1, city_government_agency_id: 1, title: "Solicitação de sálarios dos motoristas dos vereadores do Rio de Janeiro"
                  )
