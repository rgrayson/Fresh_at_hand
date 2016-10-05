class Mrktcstore < ActiveRecord::Base
    has_many:Storeperm, foreign_key: "storeid"
end
