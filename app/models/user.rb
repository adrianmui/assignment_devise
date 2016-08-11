class User < ApplicationRecord
  validates :first_name, length: { minimum: 1, maximum: 10}
  validates :last_name, length: { minimum: 1, maximum: 10}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
