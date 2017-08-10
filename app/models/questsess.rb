class Questsess < ApplicationRecord
    has_many :questions, dependent: :destroy
    belongs_to :user


    after_initialize :set_defaults, :if => :new_record?

	def set_defaults
		self.refnumber ||= SecureRandom.hex(n=3)
	    self.active = true
	    self.title ||= "New Session"
	end
end
