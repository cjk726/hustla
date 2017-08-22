class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :venues

  # Indirect associations

  has_many   :pool_tables,
             :through => :venues,
             :source => :pool_tables

  # Validations

end
