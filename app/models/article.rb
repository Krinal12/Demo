class Article < ApplicationRecord
has_one_attached :avatar

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :email , presence: true
  validates :dob , presence: true , comparison: { less_than: Date.today }
  validates :gender, :inclusion => { :in => ["Male", "Female"] }
  validates :condition , acceptance: true
end
