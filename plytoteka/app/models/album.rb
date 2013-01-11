class Album < ActiveRecord::Base
  attr_accessible :opis, :rok_powstania, :tytul, :wykonawca, :tag_list
  acts_as_taggable
end
