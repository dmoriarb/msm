class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :duration, :numericality => { :greater_than => 0, :less_than_or_equal_to => 2764800 }

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

end
