class CreateComboBoxOptions < ActiveRecord::Migration
  def change
    create_table :combo_box_options do |t|
      t.string :name
      t.integer :custom_field_id

      t.timestamps null: false
    end
  end
end
