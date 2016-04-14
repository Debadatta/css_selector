class CreateSelectors < ActiveRecord::Migration
  def change
    create_table :selectors do |t|
      t.string :style
      t.string :value
      t.timestamps null: false
    end
  end
end
