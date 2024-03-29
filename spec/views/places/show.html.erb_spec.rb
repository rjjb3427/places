require 'rails_helper'

RSpec.describe "places/show", :type => :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyText",
      :location => "MyText",
      :author => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
