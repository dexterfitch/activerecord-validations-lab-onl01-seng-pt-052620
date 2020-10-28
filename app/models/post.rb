class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait?

  def clickbait?
    content.include?("Won't Believe") || content.include?("Secret") || content.include?("Top %w(/\d/)") || content.include?("Guess")
  end

end
