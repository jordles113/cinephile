class User < ApplicationRecord
   has_secure_password
   has_one_attached :avatar
   has_many :reviews, dependent: :destroy 
   has_many :movies, through: :reviews
   has_many :lists, dependent: :destroy 

   validates :username, uniqueness: :true 
   validates :password, :presence => true,
                        :confirmation => true,
                        :length => {:within => 6..40},
                        :on => :update

   scope :most_reviews, -> {joins(:reviews).group("users.id").order("count(reviews.id) DESC").limit(10)}
  

   
end  