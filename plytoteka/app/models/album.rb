class Album < ActiveRecord::Base
  attr_accessible :opis, :rok_powstania, :tytul, :wykonawca, :tag_list, :image, :remote_image_url
  acts_as_taggable
  mount_uploader :image, ImageUploader

  validates :rok_powstania, :numericality => { :only_integer => true }
  validates :tytul, presence: true, uniqueness: true
  validates :wykonawca, presence: true
  validates :tag_list, presence: true
end
