class Venue < ApplicationRecord
  # Direct associations

  has_many   :pool_tables,
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
