class Actor < ApplicationRecord
  # Direct associations

  has_many   :characters

  # Indirect associations

  has_many   :movies,
             :through => :characters,
             :source => :movie

  # Validations

end
