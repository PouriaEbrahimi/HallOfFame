class Memer < ActiveRecord::Base
    validates :name, :presence => true, uniqueness: {case_sensitive: false, message: "already in use"},
    format: { with: /\A[a-zA-Z ]*+\z/, message: "only uses alphabet characters without spaces" }
    
    validates :age, :presence => true
    validates_numericality_of :age, only_integer: true, message: "only uses numbers"
    
    validates :gender, :presence => true, 
    format: { with: /\A[a-zA-Z0-9 ]*+\z/, message: "only uses alphanumeric characters and spaces" }
    
    before_save :capitalize_name_and_gender
    def capitalize_name_and_gender
        self.name = self.name.downcase.capitalize
        self.gender = self.gender.split(' ').map(&:downcase).map(&:capitalize).join(' ')
    end
end
