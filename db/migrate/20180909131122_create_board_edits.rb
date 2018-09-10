class CreateBoardEdits < ActiveRecord::Migration[5.2]
  def change
    create_table :board_edits do |t|
      t.integer :user_id
      t.integer :board_id
      t.integer :row_number
      t.integer :column_number
      t.string :colour
      t.timestamps
    end
    add_index(:board_edits, [:user_id, :board_id])
  end
end
