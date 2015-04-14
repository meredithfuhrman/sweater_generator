class CreateYarns < ActiveRecord::Migration
  def change
    create_table :yarns do |t|
      t.string :yarn_placeholder
      
      t.timestamps null: false
    end
  end
end
