class Waiter
  attr_accessor :name, :years_of_exp
  @@all = []

  def initialize(name, years_of_exp)
  @name = name
  @@all << self
  @years_of_exp = years_of_exp
end
 def self.all
   @@all
 end
 
 def new_meal(customer, total, tip)
   Meal.new(self, customer,total,tip)
 end
 def meals
   Meal.all.select{|meal| meal.waiter ==self}
 end
 
 def best_tipper
   meals.max_by{|meal| meal.tip}.customer
 end
end
