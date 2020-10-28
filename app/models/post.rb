class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait?

  def clickbait?
    if title && (title.include?("Won't Believe") || title.include?("Secret") || title.include?("Top %w(/\d/)") || title.include?("Guess"))
      true
    else
      false
    end
  end

end
