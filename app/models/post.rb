class Post < ActiveRecord::Base
  validates :title, presence: true, inclusion: { in: %w(small medium large)
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Won't Believe Secret Top Guess) }
end
