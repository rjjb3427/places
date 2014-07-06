require 'rails_helper'

RSpec.describe "places/new", :type => :view do
  before(:each) do
    assign(:place, Place.new(
      :name => "MyText",
      :location => "MyText",
      :author => nil
    ))
  end

  it "renders new place form" do
    render

    assert_select "form[action=?][method=?]", places_path, "post" do

      assert_select "textarea#place_name[name=?]", "place[name]"

      assert_select "textarea#place_location[name=?]", "place[location]"

      assert_select "input#place_author_id[name=?]", "place[author_id]"
    end
  end
end
