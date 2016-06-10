FactoryGirl.define do
  factory :contact_custom_field do
    value "MyText"
    custom_field_id 1
    contact_id 1
  end
end
