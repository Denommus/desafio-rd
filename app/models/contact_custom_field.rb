class ContactCustomField < ActiveRecord::Base
  belongs_to :contact
  belongs_to :custom_field
end
