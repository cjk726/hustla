class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :pool_table,
             :counter_cache => true

  belongs_to :venue,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_one    :neighborhood,
             :through => :venue,
             :source => :neighborhood

  # Validations

end
