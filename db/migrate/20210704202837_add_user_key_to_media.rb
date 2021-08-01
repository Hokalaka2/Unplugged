class AddUserKeyToMedia < ActiveRecord::Migration[6.1]
  def change
    add_reference :medias, :user
    add_foreign_key :medias, :users
  end
end
