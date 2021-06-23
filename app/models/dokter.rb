class Dokter < ApplicationRecord
  belongs_to :rumahsakit
  has_many :pasien
end
