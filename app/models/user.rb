class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :stars

  def self.anonymous
    where(email: 'anonymous@rix.li').first
  end

  def star(formula)
    star = Star.find_by(user: self,
                        formula: formula)
    unless star
      Star.create( user: self,
                   formula: formula)
      formula.stars_count += 1
      formula.save!
    end
  end

  def unstar(formula)
    star = Star.find_by(user: self,
                        formula: formula)
    if star
      star.destroy
      formula.stars_count -= 1 unless formula.stars_count.zero?
      formula.save!
    end
  end

  def starred?(formula)
    !!Star.find_by( user: self,
                    formula: formula)
  end
end
