require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end
end
