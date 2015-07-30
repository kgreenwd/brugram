class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # dependent: :destroy will destroy the associated records if a user is destroyed
  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
end