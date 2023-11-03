FactoryBot.define do
  factory :permission do
    action { 'MyString' }
    controller { 'MyString' }
    custom_role { nil }
  end
end
