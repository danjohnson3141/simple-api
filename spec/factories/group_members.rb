# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group_member do
    user nil
    group nil
    created_by 1
    updated_by 1
  end
end
