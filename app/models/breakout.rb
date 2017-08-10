class Breakout < ApplicationRecord
    belongs_to :user
    has_many :breakout_regists
    has_many :members, through: :breakout_regists, source: :user

    after_initialize :set_defaults, :if => :new_record?

	def set_defaults
		self.refnumber ||= SecureRandom.hex(n=3)
	    self.title ||= "New Breakout"
	end
end
