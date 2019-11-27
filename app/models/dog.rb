class Dog < ApplicationRecord
  has_many :employees

  # def employee
  #   self.employee.map { |e| e.name }
  # end
end
