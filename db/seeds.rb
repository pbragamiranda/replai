# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.new(name:"yuri", cpf:12345678900, password:"testtest", genre:"m", email:"ygravata@gmail.com", birthdate: "1992-11-24")

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

