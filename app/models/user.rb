class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :bookmarks,
             :source => :venue

  has_many   :pool_tables,
             :through => :bookmarks,
             :source => :pool_table

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
