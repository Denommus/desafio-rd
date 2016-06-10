class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :contact_custom_fields
  has_many :custom_fields, through: :contact_custom_fields
  accepts_nested_attributes_for :contact_custom_fields
end
