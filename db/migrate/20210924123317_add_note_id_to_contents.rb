class AddNoteIdToContents < ActiveRecord::Migration[6.0]
  def change
    add_reference :contents, :note, foreign_key: true
    change_column :contents, :note_id, :integer, null: false
  end
end
