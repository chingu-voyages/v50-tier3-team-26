class Tutor < ApplicationRecord
    belongs_to :user

    validates :name, :email, :tech_stack, :location, presence: true
end
