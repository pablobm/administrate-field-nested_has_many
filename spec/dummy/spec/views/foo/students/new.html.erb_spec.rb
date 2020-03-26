require 'rails_helper'

RSpec.describe "foo/students/new", type: :view do
  before(:each) do
    assign(:foo_student, Foo::Student.new(
      :name => "MyString",
      :school => nil
    ))
  end

  it "renders new foo_student form" do
    render

    assert_select "form[action=?][method=?]", foo_students_path, "post" do

      assert_select "input[name=?]", "foo_student[name]"

      assert_select "input[name=?]", "foo_student[school_id]"
    end
  end
end
