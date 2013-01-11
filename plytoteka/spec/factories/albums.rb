# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :album do
    tytul "MyString"
    wykonawca "MyString"
    rok_powstania 1
    opis "MyText"
  end
end
