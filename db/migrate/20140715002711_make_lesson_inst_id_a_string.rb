class MakeLessonInstIdAString < ActiveRecord::Migration
  def change
    change_column :lessons, :institution_id, :string
  end
end
