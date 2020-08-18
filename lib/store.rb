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


  puts :employees
  before_destroy :restrict_destroy


  private

  def get_employees
    puts "Checking No. of Employees: #{Employee.where(store: self.id).count}"
    Employee.where(store: self.id).count
  end


  def restrict_destroy
    if get_employees > 0
      return false
    end
    return true
  end

    
  
end
