class User < ApplicationRecord
  include Votable

  has_many :thoughts
  has_many :votes, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def username
    @username ||= email.split('@')[0]
  end

end
