class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rests

  validates :email, presence: true
  validates :password, presence: true, length: {minimum: 8}
  validates :first_name, presence: true
  validates :last_name, presence: true
end
