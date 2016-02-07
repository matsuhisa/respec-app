require 'rails_helper'

RSpec.describe "publishers/edit", type: :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :name => "MyString",
      :description => "MyText",
      :prefecture_id => 1
    ))
  end

  it "renders the edit publisher form" do
    render

    assert_select "form[action=?][method=?]", publisher_path(@publisher), "post" do

      assert_select "input#publisher_name[name=?]", "publisher[name]"

      assert_select "textarea#publisher_description[name=?]", "publisher[description]"

      assert_select "input#publisher_prefecture_id[name=?]", "publisher[prefecture_id]"
    end
  end
end
