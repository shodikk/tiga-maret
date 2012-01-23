class Article < ActiveRecord::Base

  acts_as_indexed :fields => [:judul, :isi]

  validates :judul, :presence => true, :uniqueness => true
  
end
