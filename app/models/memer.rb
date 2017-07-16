class Memer < ActiveRecord::Base
    validates :name, :presence => true, 
    format: { with: /\A[a-zA-Z]*+\z/, message: "only uses alphabet characters without spaces" }
    
    validates :age, :presence => true
    validates_numericality_of :age, only_integer: true, message: "only uses numbers"
    
    validates :gender, :presence => true, 
    format: { with: /\A[a-zA-Z0-9 ]*+\z/, message: "only uses alphanumeric characters and spaces" }
end
