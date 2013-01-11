require 'spec_helper'

describe "albums/edit" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :tytul => "MyString",
      :wykonawca => "MyString",
      :rok_powstania => 1,
      :opis => "MyText"
    ))
  end

  it "renders the edit album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => albums_path(@album), :method => "post" do
      assert_select "input#album_tytul", :name => "album[tytul]"
      assert_select "input#album_wykonawca", :name => "album[wykonawca]"
      assert_select "input#album_rok_powstania", :name => "album[rok_powstania]"
      assert_select "textarea#album_opis", :name => "album[opis]"
    end
  end
end
