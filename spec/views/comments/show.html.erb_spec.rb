require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :photo_title => "Photo Title",
      :body => "MyText",
      :comment_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Photo Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
