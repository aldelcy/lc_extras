class Questsess < ApplicationRecord
    has_many :questions, dependent: :destroy
    belongs_to :user

	has_one :breakout_questsess
	has_one :breakout, through: :breakout_questsess

    after_initialize :set_defaults, :if => :new_record?

	def set_defaults
		self.refnumber ||= SecureRandom.hex(n=3)
	    self.active = true
		self.title ||= "New Session"
		self.desc  ||= 'Ask questions for this breakout session here'
	end
end
