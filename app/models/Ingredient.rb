class Ingredient
  attr_accessor :name


  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end


  def self.all
    @@all
  end

  def self.most_common_allergen
    self.all.max_by {|ingredient| ingredient.allergens.count}

    # max = 0
    # max_ing = ''
    # self.all.each do |ingredient|
    #   if ingredient.allergens.count > max
    #     max = ingredient.allergens.count
    #     max_ing = ingredient
    #   end
    # end
    #
    # max_ing

  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end


end
