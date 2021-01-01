class Patient < ApplicationRecord
  include Scope

  belongs_to :therapist
  has_many :rom_scales, dependent: :destroy
  has_many :mmt_scales, dependent: :destroy
  has_many :nrs_scales, dependent: :destory

  validates :first_name, presence: true, length: { maximum: 10 }
  validates :last_name, presence: true, length: { maximum: 10 }

  enum sex: { undefined: nil, man: 1, woman: 2 }
end
