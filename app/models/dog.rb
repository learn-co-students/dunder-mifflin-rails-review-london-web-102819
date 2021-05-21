class Dog < ApplicationRecord
    has_many :employees 
    
    # def owner_name
    #     @dog = Dog.all.(params:[:owner_id])
    #   end

end
