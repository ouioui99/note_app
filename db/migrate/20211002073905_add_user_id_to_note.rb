class AddUserIdToNote < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :user_id, :int
  end
end
