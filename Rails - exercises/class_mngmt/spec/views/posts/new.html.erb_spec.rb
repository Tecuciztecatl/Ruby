require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :topic => "MyString",
      :date => "MyString",
      :body => "MyText",
      :student_id => 1
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_topic[name=?]", "post[topic]"
      assert_select "input#post_date[name=?]", "post[date]"
      assert_select "textarea#post_body[name=?]", "post[body]"
      assert_select "input#post_student_id[name=?]", "post[student_id]"
    end
  end
end
