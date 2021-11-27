class Worker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :venue_comments, dependent: :destroy
         has_many :requests, dependent: :destroy
         has_many :worker_schedules, dependent: :destroy
         has_many :events


         validates :last_name, presence: true
         validates :first_name, presence: true


  def full_name
    last_name + " " + first_name
  end

end
