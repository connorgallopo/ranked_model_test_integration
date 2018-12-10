class CreateBacklogItems < ActiveRecord::Migration[5.2]
  def change
    create_table :backlog_items do |t|
      t.string :title
      t.integer :sprint_id
      t.integer :row_order
      t.timestamps
    end
  end
end
