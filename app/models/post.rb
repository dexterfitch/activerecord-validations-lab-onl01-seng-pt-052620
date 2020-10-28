class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :clickbait?

  def clickbait?
    title.include?("Won't Believe") || title.include?("Secret") || title.include?("Top %w(/\d/)") || title.include?("Guess")
  end

end
