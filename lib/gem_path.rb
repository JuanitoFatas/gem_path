require "gem_path/version"

class GemPath
  GemNotFound = Class.new(RuntimeError)

  def self.find(name)
    new(name).find
  end

  def initialize(name)
    @name = name
  end

  def find
    if gem_exists?
      gemspec.gem_dir
    else
      raise GemNotFound, "Couldn't find gem directory for '#{name}'"
    end
  end

  private
  attr_reader :name

  def gem_exists?
    !Gem::Specification.find_all_by_name(name).empty?
  end

  def gemspec
    @_gemspec ||= Gem::Specification.find_by_name(name)
  end
end
