class CreateSweaters < ActiveRecord::Migration
  def change
    create_table :sweaters do |t|
      t.string :name
      t.integer :user_id, null: false
      t.integer :swatch_id, null: false
      t.integer :measurement_id, null: false
      t.integer :pattern_id, null: false

      t.timestamps
    end
  end
end
