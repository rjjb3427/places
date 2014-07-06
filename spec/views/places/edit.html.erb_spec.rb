require 'rails_helper'

RSpec.describe "places/edit", :type => :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyText",
      :location => "MyText",
      :author => nil
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "textarea#place_name[name=?]", "place[name]"

      assert_select "textarea#place_location[name=?]", "place[location]"

      assert_select "input#place_author_id[name=?]", "place[author_id]"
    end
  end
end
