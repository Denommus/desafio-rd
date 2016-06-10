class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :name
      t.string :field_type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
