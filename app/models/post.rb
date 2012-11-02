class Post < ActiveRecord::Base
  attr_accessible :text, :title

  has_many :comments

  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true, length: { maximum: 200 }

end
