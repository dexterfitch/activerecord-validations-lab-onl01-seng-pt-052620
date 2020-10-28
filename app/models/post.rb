class Post < ActiveRecord::Base
  validates :title, presence: true, if: :clickbait?
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  def clickbait?
    content.include?("Won't Believe", "Secret", "Top %w(/\d/)", "Guess")
  end

end
