class Employee < ApplicationRecord

    belongs_to :dog

    validates :alias, uniqueness: true
    validates :title, uniqueness: true
    
    def name
        "#{self.first_name.capitalize} #{self.last_name.capitalize}" 
    end

    def attributes
        ["Alias: #{self.alias}", "Title: #{self.title}", "Office: #{self.office}"]
    end

end
