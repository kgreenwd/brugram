class Photo < ActiveRecord::Base
  validates :image, :caption, presence: true
  belongs_to :user
  has_many :comments
end
