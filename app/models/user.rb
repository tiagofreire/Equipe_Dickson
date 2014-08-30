class User < ActiveRecord::Base
  
  has_many :recipe
  has_many :ranking
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  def votar_em_categoria(ranking, recipe_id, category_id)
 	ranking.user = self
 	rc = RecipeCategory.new
 	rc.recipe_id = recipe_id
 	rc.category_id = category_id
 	rc.ranking = ranking
 	rc.save
  end

end
