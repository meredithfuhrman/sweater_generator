class CreateSweaters < ActiveRecord::Migration
  def change
    create_table :sweaters do |t|
      t.integer :pattern_id, null: false
      t.integer :swatch_id, null: false
      t.integer :measurement_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
