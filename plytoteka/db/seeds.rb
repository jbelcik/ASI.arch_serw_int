# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

albums = [
{tytul:'Hybrid Theory', wykonawca:'Linkin Park', rok_powstania:'2000', opis:"blabla"},
{tytul:'Pierwsze wyjście z mroku', wykonawca:'Coma', rok_powstania:'2004', opis:"blabla"}
]

albums.each do |attr|
  # puts attr[:quotation]
  Album.find_or_initialize_by_tytul(attr[:tytul]).tap do |t|
    t.wykonawca = attr[:wykonawca]
    t.rok_powstania = attr[:rok_powstania]
    t.opis = attr[:opis]
    t.save!
  end
end
