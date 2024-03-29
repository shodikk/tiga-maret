class CreateAnnouncements < ActiveRecord::Migration

  def self.up
    create_table :announcements do |t|
      t.string :judul
      t.datetime :tanggal
      t.text :ringkasan
      t.text :isi
      t.integer :position

      t.timestamps
    end

    add_index :announcements, :id

    load(Rails.root.join('db', 'seeds', 'announcements.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "announcements"})

    Page.delete_all({:link_url => "/announcements"})

    drop_table :announcements
  end

end
