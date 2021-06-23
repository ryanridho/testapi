class Pasien < ApplicationRecord
  belongs_to :dokter
  validate :validate_dokter

  def validate_dokter
    errors.add(:dokter, "dokter sudah penuh") if :dokter.count > 10
  end
end
