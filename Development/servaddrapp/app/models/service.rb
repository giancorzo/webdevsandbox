class Service < ActiveRecord::Base
    belongs_to :from_address, :class_name => 'Address', :foreign_key => 'from_address_id'
    belongs_to :to_address, :class_name => 'Address', :foreign_key => 'to_address_id'
end
