# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
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
=======
User.new(name:"Yuri", cpf:12345678900, password:"testtest", genre:"m", email:"ygravata@gmail.com", birthdate: "1992-11-24")

#Cleaning database
puts 'Cleaning database...'

LaiRequest.destroy_all
PublicDatum.destroy_all
Branch.destroy_all
Branch.destroy_all
CityGovernmentAgency.destroy_all

#Creating city_government_agencies

municipalities = ["Rio de Janeiro", "São Gonçalo", "Duque de Caxias", "Nova Iguaçu", "Niterói", 
									"Belford Roxo", "Campos dos Goytacazes", "São João de Meriti", "Petrópolis", 
									"Volta Redonda", "Macaé", "Magé", "Itaboraí", "Cabo Frio", "Angra dos Reis", 
									"Nova Friburgo", "Barra Mansa", "Teresópolis", "Mesquita", "Nilópolis", "Maricá", 
									"Rio das Ostras", "Queimados", "Itaguaí", "Araruama", "Resende", "Japeri", 
									"São Pedro da Aldeia", "Itaperuna", "Barra do Piraí", "Saquarema", "Seropédica", 
									"Três Rios", "Valença", "Guapimirim", "Rio Bonito", "Cachoeiras de Macacu", 
									"Paracambi", "Mangaratiba", "Paraíba do Sul", "Casimiro de Abreu", "Paraty", 
									"Santo Antônio de Pádua", "São Francisco de Itabapoana", "Armação dos Búzios", 
									"São Fidélis", "Bom Jesus do Itabapoana", "Vassouras", "São João da Barra", 
									"Tanguá", "Itatiaia", "Arraial do Cabo", "Piraí", "Iguaba Grande", "Paty do Alferes", 
									"Bom Jardim", "Miracema", "Miguel Pereira", "Pinheiral", "Quissamã", "Itaocara", 
									"Conceição de Macabu", "Cordeiro", "São José do Vale do Rio Preto", "Silva Jardim", 
									"Cantagalo", "Porto Real", "Carmo", "Porciúncula", "Mendes", "Rio Claro", "Sapucaia", 
									"Carapebus", "Sumidouro", "Cambuci", "Natividade", "Italva", "Quatis", "Engenheiro Paulo de Frontin", 
									"Cardoso Moreira", "Areal", "Aperibé", "Duas Barras", "Varre-Sai", "Trajano de Moraes",
									"Santa Maria Madalena", "São Sebastião do Alto", "Rio das Flores", "Comendador Levy Gasparian", 
									"Laje do Muriaé", "São José de Ubá", "Macuco"]

municipalities.each do |name|
	CityGovernmentAgency.new(city_name: '#{name}')
end

#Creating Puclic Data

data = [{category: "Saúde", "power ": "Legislativo", "description": "Série Histórica (2018-2020) do total de leitos disponíveis no município de São João de Mereti. Dados disponibilizados pela Secretaria Municipal de Saúde no dia 20/03/2020.", "city": "São João de Meriti", "state": "Rio de Janeiro", "name": "Número total de leitos disponíveis nos hospitais municipais", "format": "CSV", "level": "Municipal"}, 
				{category: "Segurança", "power ": "Executivo", "description": "Evolução do número total de guardas municipais da cidade de Itaperuna de 2015-2020", "city": "Itaperuna", "state": "Rio de Janeiro", "name": "Número do total de agentes da guarda municipal ", "format": "CSV", "level": "Municipal"}, 
				{category: "Transparência Financeira", "power ": "Legislativo", "description": "Total de gasto com diárias dos vereadores de Araruama no mandado de 2016-2020. Dados disponibilizados em 01/02/2020", "city": "Araruama", "state": "Rio de Janeiro", "name": "Gasto com diárias dos vereadores de Araruama", "format": "CSV", "level": "Municipal"}, 
				{category: "Educação", "power ": "Executivo", "description": "Evolução do número de vagas disponíveis para alunos de Ensino Fundamental e Educação para Jovens e Adultos para os anos de 2018-2019", "city": "Resende", "state": "Rio de Janeiro", "name": "Número de vagas no Ensino Fundamental e EJA", "format": "CSV", "level": "Municipal"}, 
				{category: "Transparência Financeira", "power ": "Legislativo", "description": "Lista com nome e salários dos assessores de todos os vereadores da câmara municipal para os anos de 2014-2020", "city": "Quissamã", "state": "Rio de Janeiro", "name": "Nome e salário assessores dos Vereadores da Câmara Municipal de Quissamã", "format": "CSV", "level": "Municipal"}, 
				{category: "Transparência Financeira", "power ": "Legislativo", "description": "Gastos de por gabinete de vereadores para os anos de 2018-2019", "city": "Seropédica", "state": "Rio de Janeiro", "name": "Gasto de gabinete vereadores de Seropédica", "format": "CSV", "level": "Municipal"}, 
				{category: "Infraestrutura", "power ": "Executivo", "description": "Dados de execução financeira da obra de saneamento da região baixa de Três Rios", "city": "Três Rios", "state": "Rio de Janeiro", "name": "Execução Orçamentária Obra Três Rios", "format": "CSV", "level": "Municipal"}, 
				{category: "Transparência Financeira", "power ": "Legislativo", "description": "Lista de assessores do vereador Vandinho da Gráfica (MDB)", "city": "Mesquita", "state": "Rio de Janeiro", "name": "Lista de assessores do vereador Vandinho da Gráfica (MDB)", "format": "CSV", "level": "Municipal"}, 
				{category: "Infraestrutura", "power ": "Executivo", "description": "Projeto de Revitalização Urbana da região central de Iguaba Grande. Documento contém todas as plantas baixas bem como o paisagismo. Os dados financeiros estão incompletos", "city": "Iguaba Grande", "state": "Rio de Janeiro", "name": "Projeto de Revitalização Urbana da região central de Iguaba Grande", "format": "PDF", "level": "Municipal"}]

>>>>>>> 4e97b323156ba5344561e720325330ed271b6bf5
