class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :shorturl
      t.string :longurl
      t.integer :user_id

      t.timestamps
    end
  end
end
