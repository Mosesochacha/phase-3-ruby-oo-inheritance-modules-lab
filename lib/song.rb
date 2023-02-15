require 'pry'
require_relative '../lib/concerns/memorable'
class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
    prepend Parable
  @@songs = []


  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end
  def artist=(artist)
    @artist = artist
  end


end
