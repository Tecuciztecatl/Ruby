require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :topic => "MyString",
      :date => "MyString",
      :body => "MyText",
      :student_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_topic[name=?]", "post[topic]"
      assert_select "input#post_date[name=?]", "post[date]"
      assert_select "textarea#post_body[name=?]", "post[body]"
      assert_select "input#post_student_id[name=?]", "post[student_id]"
    end
  end
end
