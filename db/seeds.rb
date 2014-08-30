# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category1 = Category.create(name: 'Vegetariana')
category2 = Category.create(name: 'Japonesa')
category3 = Category.create(name: 'Mexicana')
category4 = Category.create(name: 'Regional')
category5 = Category.create(name: 'Italiana')

user = User.create :email => 'usuario1@gmail.com', :password => '123qwe123'

recipe = Recipe.create(:name=>"receita 01",:items=>"- item 01 <br/> - item 02 <br/> - item 03 <br/> - item 04 <br/>",:preparation=>"A população ela precisa da Zona Franca de Manaus, porque na Zona franca de Manaus, não é uma zona de exportação, é uma zona para o Brasil. Portanto ela tem um objetivo, ela evita o desmatamento, que é altamente lucravito. Derrubar arvores da natureza é muito lucrativo!",:user=>user)

RecipeCategory.create :recipe =>recipe,:category=>category1
RecipeCategory.create :recipe =>recipe,:category=>category2
RecipeCategory.create :recipe =>recipe,:category=>category3