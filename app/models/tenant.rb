class Tenant < ApplicationRecord
    validates :name, presence:true, length: {minimum: 1}
    validates :age, numericality: {greator_than_or_equal_to: 18}

    has_many :leases
    has_many :apartments, through: :leases
end
