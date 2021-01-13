class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.integer    :task_id,   null: false
      t.integer    :act_time,  null: false
      t.references :user,      null: false, foreign_key: true 
      t.timestamps
    end
  end
end
