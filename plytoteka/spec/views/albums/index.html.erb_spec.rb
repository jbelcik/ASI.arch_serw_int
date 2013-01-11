require 'spec_helper'

describe "albums/index" do
  before(:each) do
    assign(:albums, [
      stub_model(Album,
        :tytul => "Tytul",
        :wykonawca => "Wykonawca",
        :rok_powstania => 1,
        :opis => "MyText"
      ),
      stub_model(Album,
        :tytul => "Tytul",
        :wykonawca => "Wykonawca",
        :rok_powstania => 1,
        :opis => "MyText"
      )
    ])
  end

  it "renders a list of albums" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tytul".to_s, :count => 2
    assert_select "tr>td", :text => "Wykonawca".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
