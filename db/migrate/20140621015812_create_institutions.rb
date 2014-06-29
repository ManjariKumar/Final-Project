class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :inst_id
      t.string :inst_name
      t.string :inst_add1
      t.string :inst_add2
      t.string :inst_city
      t.string :inst_state
      t.integer :inst_zip
      t.string :inst_phone
      t.string :inst_url

      t.timestamps
    end
  end

  def add_column
  end
  
end
