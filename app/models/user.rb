class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

  has_many :questsess, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :breakouts, dependent: :destroy
  has_many :breakout_regists
  has_many :break_sesh, through: :breakout_regists, source: :breakout

end
