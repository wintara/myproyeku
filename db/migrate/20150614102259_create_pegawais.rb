class CreatePegawais < ActiveRecord::Migration
  def change
    create_table :pegawais do |t|
      t.string :nama
      t.string :alamat

      t.timestamps null: false
    end
  end
end
