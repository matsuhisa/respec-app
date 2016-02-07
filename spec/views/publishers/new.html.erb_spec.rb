require 'rails_helper'

RSpec.describe "publishers/new", type: :view do
  before(:each) do
    assign(:publisher, Publisher.new(
      :name => "MyString",
      :description => "MyText",
      :prefecture_id => 1
    ))
  end

  it "renders new publisher form" do
    render

    assert_select "form[action=?][method=?]", publishers_path, "post" do

      assert_select "input#publisher_name[name=?]", "publisher[name]"

      assert_select "textarea#publisher_description[name=?]", "publisher[description]"

      assert_select "input#publisher_prefecture_id[name=?]", "publisher[prefecture_id]"
    end
  end
end
