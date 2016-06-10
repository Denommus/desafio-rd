class CreateContactCustomFields < ActiveRecord::Migration
  def change
    create_table :contact_custom_fields do |t|
      t.text :value
      t.integer :custom_field_id
      t.integer :contact_id

      t.timestamps null: false
    end
  end
end
