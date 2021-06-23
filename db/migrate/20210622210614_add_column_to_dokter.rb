class AddColumnToDokter < ActiveRecord::Migration[6.1]
  def change
    add_column :dokters, :jadwal, :date
  end
end
