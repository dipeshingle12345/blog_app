class Article < ApplicationRecord
   has_many :comments
 validates :title, presence: true
 validates :body, presence: true, length: { minimum: 10 }

 after_validation :conver_to_upcase

 private
 def conver_to_upcase
    self.title = title.upcase if title.present?
 end



end
