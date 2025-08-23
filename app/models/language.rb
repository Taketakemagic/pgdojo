class Language < ApplicationRecord
  has_many :questions, dependent: :destroy
end
