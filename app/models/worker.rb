class Worker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :venue_comments, dependent: :destroy
         has_many :request, dependent: :destroy
         has_many :worker_schedules, dependent: :destroy
end
