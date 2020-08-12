FactoryGirl.define do

  factory :todo_list do
    title "list 1"
    description "this is the first test list"
    created_at Time.now
    updated_at Time.now
  end
end
