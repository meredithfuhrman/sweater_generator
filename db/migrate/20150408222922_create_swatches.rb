class CreateSwatches < ActiveRecord::Migration
  def change
    create_table :swatches do |t|
      t.integer :stitches_per_inch, null: false
      t.string :needle_size
      t.integer :yarn_id

      t.timestamps
    end
  end
end
