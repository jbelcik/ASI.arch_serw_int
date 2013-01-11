require 'spec_helper'

describe "albums/show" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :tytul => "Tytul",
      :wykonawca => "Wykonawca",
      :rok_powstania => 1,
      :opis => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tytul/)
    rendered.should match(/Wykonawca/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
