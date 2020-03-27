class Run < ApplicationRecord
    validates :date, presence: true, length: { maximum: 255 }
    validates :name, presence: true, length: { maximum: 255 }
    validates :distance, presence: true, length: { maximum: 255 }
end
