require 'rails_helper'

RSpec.describe "foo/students/edit", type: :view do
  before(:each) do
    @foo_student = assign(:foo_student, Foo::Student.create!(
      :name => "MyString",
      :school => nil
    ))
  end

  it "renders the edit foo_student form" do
    render

    assert_select "form[action=?][method=?]", foo_student_path(@foo_student), "post" do

      assert_select "input[name=?]", "foo_student[name]"

      assert_select "input[name=?]", "foo_student[school_id]"
    end
  end
end
