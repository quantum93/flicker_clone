require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :photo_title => "MyString",
      :body => "MyText",
      :comment_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input[name=?]", "comment[photo_title]"

      assert_select "textarea[name=?]", "comment[body]"

      assert_select "input[name=?]", "comment[comment_id]"
    end
  end
end
