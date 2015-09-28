class Service < ActiveRecord::Base
    belongs_to :from_address, :class_name => 'Address'
    belongs_to :to_address, :class_name => 'Address'
end
