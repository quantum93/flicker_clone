require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :photo_title => "MyString",
      :body => "MyText",
      :comment_id => 1
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[photo_title]"

      assert_select "textarea[name=?]", "comment[body]"

      assert_select "input[name=?]", "comment[comment_id]"
    end
  end
end
