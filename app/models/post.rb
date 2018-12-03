class Post < ApplicationRecord
  has_many :comments, as: :commentable

  def self.to_csv
    attributes = %w{id title body}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |post|

        csv << attributes.map{ |attr| post.send(attr) }
      end
    end
  end

  def comments
#    self.first.comments.all
  end

end
