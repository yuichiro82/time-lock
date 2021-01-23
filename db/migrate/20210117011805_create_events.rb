class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title, null: false, default: ''
      t.text :text
      t.datetime :start_time,   null: false
      t.datetime :end_time,     null: false
      t.boolean :allDay, default: ''
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
