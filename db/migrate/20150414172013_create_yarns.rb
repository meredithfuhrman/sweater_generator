class CreateYarns < ActiveRecord::Migration
  def change
    create_table :yarns do |t|
      t.string :yarn_placeholder

      t.timestamps
    end
  end
end
