# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    name "MyString"
    description "MyText"
    visible false
    leavable false
    member_list false
    group_type nil
    owner_user_id 1
    app_sponsor_id 1
    created_by 1
    updated_by 1
  end
end
