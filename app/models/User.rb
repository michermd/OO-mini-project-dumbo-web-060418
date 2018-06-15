class User

  attr_accessor :name


  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end


  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      # binding.pry
      recipe_card.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_cards(recipe, date, rating)
    # binding.pry
    RecipeCard.new(recipes, self, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def user_allergens
    Allergen.all.select do |allergen|
      allergen.user = self
      binding.pry
    end
  end

  def most_recent_recipe
    self.recipe_cards.last.recipe
  end

  def top_three_recipes
    cards = self.recipe_cards.max_by(3) do |card|
			card.rating
		end
    cards.map do |card|
			card.recipe
		end
  end

  def allergens
    self.user_allergens.map do |allergen|
      allergen.ingredient
    end
  end

end
