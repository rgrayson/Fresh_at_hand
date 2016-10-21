class Storeperm < ActiveRecord::Base
    self.primary_key ="storeid"
    belongs_to:Mrktcstore, foreign_key: "storeid"
end
