class AddColumnToDokters < ActiveRecord::Migration[6.1]
  def change
    add_column :dokters, :pasien, :string
  end
end
