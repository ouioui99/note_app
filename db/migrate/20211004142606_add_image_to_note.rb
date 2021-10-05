class AddImageToNote < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :image, :binary
  end
end
