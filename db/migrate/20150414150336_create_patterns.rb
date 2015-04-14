class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :pattern_type, null: false

      t.timestamps
    end
  end
end
