class Cscorderli < ActiveRecord::Base
    belongs_to :Cscorder
    validates :qtyord, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100}, :presence => true
end
