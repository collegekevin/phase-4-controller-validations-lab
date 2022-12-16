class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction']}
   # validates :category, inclusion {in: ['Fiction', 'Non-Fiction'], message: "Categoty did not match valid categpry"}}
    validates :content, length: { minimum: 100 }
end
