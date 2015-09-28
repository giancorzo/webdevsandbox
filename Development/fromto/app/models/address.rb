class Address < ActiveRecord::Base
    has_many :from_services, :class_name => 'Service', :foreign_key => 'from_address_id'
    has_many :to_services, :class_name => 'Service', :foreign_key => 'to_address_id'
end
