class Apartment < ApplicationRecord
    validates :number, presence:true, numericality: { only_integer: true }, allow_nil: false, length: {minimum: 4}
    has_many :leases
    has_many :tenants, through: :leases
end
