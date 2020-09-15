class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    validates :name , :age, :gender, :email, presence: true
    validates :agreement , acceptance: true
end
