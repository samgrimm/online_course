class Secco < ApplicationRecord
  belongs_to :curso
  has_many :aulas
end
