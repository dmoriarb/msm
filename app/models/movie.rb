class Movie < ApplicationRecord
  # Direct associations

  has_many   :characters

  belongs_to :director,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :duration, :numericality => { :greater_than => 0, :less_than_or_equal_to => 2764800 }

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

end
