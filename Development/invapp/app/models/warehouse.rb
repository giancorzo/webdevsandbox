class Warehouse < ActiveRecord::Base
    include Loggable
    
    #after_validation :log_incidents
    #has_many :inventories
    has_many :products, through: :inventories
    validates :name, presence: true,
                     uniqueness:  {case_sensitive: false}

end
