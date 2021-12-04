class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_many :venue_comments, dependent: :destroy
        has_many :event_comments, dependent: :destroy

  def active_for_authentication?
    super && (self.is_deleted == false)
  end


end