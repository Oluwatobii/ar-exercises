class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0 }

  validate :error_check
 
  def apparel
    mens_apparel || womens_apparel
  end
 
  def error_check
    if !mens_apparel && !womens_apparel
      errors.add(:apparel, "Cant be blank (Store policy requires Men/Women's Apparel)")
    end
  end
  
end
