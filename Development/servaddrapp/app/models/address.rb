class Address < ActiveRecord::Base
    has_many :from_service, :class_name => 'Service', :foreign_key => 'from_address_id'
    has_many :to_service, :class_name => 'Service', :foreign_key => 'to_address_id'
end
