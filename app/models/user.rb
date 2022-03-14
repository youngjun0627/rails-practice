class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, -> { order(id: :asc)}, inverse_of: :user

  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  validates :password, presence: true, on: :create

end
