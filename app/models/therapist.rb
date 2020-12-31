class Therapist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  validates :unique_id, presence: true, length: { is: 8 }, uniqueness: true
  validates :first_name, presence: true, length: { maximum: 10 }
  validates :last_name, presence: true, length: { maximum: 10 }

  def will_save_change_to_email?
    false
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
