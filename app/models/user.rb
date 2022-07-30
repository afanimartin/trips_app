class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_many :trips

  validates_presence_of :name, :address, :phone_number, :role_id

  def is_traveler?
    role.name == 'traveler'
  end

  def is_travel_agent?
    role.name == 'travel_agent'
  end

  def find_trip_creator(id)
    User.find(id)
  end
end
