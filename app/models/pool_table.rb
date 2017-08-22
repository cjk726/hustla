class PoolTable < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :venue,
             :counter_cache => true

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

end
