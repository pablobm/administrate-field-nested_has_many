require 'rails_helper'

RSpec.describe "foo/students/show", type: :view do
  before(:each) do
    @foo_student = assign(:foo_student, Foo::Student.create!(
      :name => "Name",
      :school => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
