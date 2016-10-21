class Mrktcstore < ActiveRecord::Base
    self.primary_key ="storeid"
    has_many:Storeperm
end
