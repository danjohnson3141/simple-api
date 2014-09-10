# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group_request do
    user nil
    group nil
    pre_auth false
    approved false
    created_by 1
    updated_by 1
  end
end
