class CreatePasiens < ActiveRecord::Migration[6.1]
  def change
    create_table :pasiens do |t|
      t.references :dokter, null: false, foreign_key: true
      t.string :nama
      t.date :jadwal
      t.string :namadokter

      t.timestamps
    end
  end
end
