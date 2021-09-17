class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :contents
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
