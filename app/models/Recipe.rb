class Recipe

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
      recipe_card.recipe == self
    end
  end

  def self.most_popular
    self.all.max_by do |recipe|
      recipe.recipe_cards.count
    end
  end


  def users
    self.recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredients.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def allergens
    ingredients.select do |ingredient|
      !ingredient.allergens.empty?
    end
  end

  def add_ingredients(ingredients)
    ingredients.map do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end



end
