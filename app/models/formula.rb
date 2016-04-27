class Formula < ApplicationRecord
  belongs_to :user
  has_many :stars

  def self.search(search)
    if search
      where("title LIKE :search OR content LIKE :search", search: "%#{search}%")
    else
      all
    end
  end
end
