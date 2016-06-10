class CustomField < ActiveRecord::Base
  belongs_to :user
  has_many :combo_box_options
  has_many :contact_custom_fields
  accepts_nested_attributes_for :combo_box_options, allow_destroy: true
end
