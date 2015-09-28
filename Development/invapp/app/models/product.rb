class Product < ActiveRecord::Base
  include Loggable
  #after_validation :check_incidents
  #after_rollback :log_incidents
  
  belongs_to :category
  has_many :inventories
  has_many :warehouses, through: :inventories
  
  validates :name, presence: true,
                   uniqueness:  {case_sensitive: false}  
  validates :category, presence: true                   
  
  def category_name
    self.category.name
  end
end
