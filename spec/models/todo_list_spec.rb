require 'rails_helper'

RSpec.describe TodoList, :type => :model do

  before(:all) do
    @list1 = create(:todo_list)
  end

  it "is valid with valid attributes" do
    expect(@list1).to be_valid
  end

  it "has a unique title" do
    list2 = build(:todo_list, title: "list2")
    expect(list2).to_not be_valid
  end

  it "is not valid without description" do
    list2 = build(:todo_list, description: nil)
    expect(list2).to_not be_valid
  end

end
