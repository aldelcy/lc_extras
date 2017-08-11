class Breakout < ApplicationRecord
    belongs_to :user
    has_many :breakout_regists
	has_many :members, through: :breakout_regists, source: :user
	
	has_many :breakout_questsesses, dependent: :destroy
	has_many :questsesses, through: :breakout_questsesses

    after_create :set_defaults

	def set_defaults
		self.refnumber ||= SecureRandom.hex(n=3)
	    self.active ||= true
		self.title ||= "New Breakout" if self.title == nil
		self.questsesses.build(title:self.title+' Question Session', with:self.with)
		self.save!
	end
end
