require 'rails_helper'

RSpec.describe "foo/students/index", type: :view do
  before(:each) do
    assign(:foo_students, [
      Foo::Student.create!(
        :name => "Name",
        :school => nil
      ),
      Foo::Student.create!(
        :name => "Name",
        :school => nil
      )
    ])
  end

  it "renders a list of foo/students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
