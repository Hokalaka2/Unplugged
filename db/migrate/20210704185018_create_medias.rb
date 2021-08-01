class CreateMedias < ActiveRecord::Migration[6.1]
  def change
    create_table :medias do |t|
      t.string :name
      t.boolean :plugged
      t.datetime :date_unplugged 
      t.timestamps
    end
  end
end
