class CreateProduks < ActiveRecord::Migration
  def self.up
    create_table :produks do |t|
      t.string :nama
      t.string :alamat

      t.timestamps
    end
  end

  def self.down
    drop_table :produks
  end
end
