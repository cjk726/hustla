class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :venue,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
