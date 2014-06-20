class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :lesson_id
      t.string :name
      t.text :description
      t.string :weekday
      t.time :start_time
      t.time :end_time
      t.integer :min_age
      t.integer :max_age
      t.string :institution_id
      t.text :pre_requisite

      t.timestamps
    end
  end
end
