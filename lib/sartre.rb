require "sartre/version"

module Sartre
  def method_missing name, *arguments
    super name, arguments unless name =~ /\?\Z/
    false unless respond_to? name
    !!send(name)
  end
end

class Object
  def method_missing name, *arguments
    super name, arguments unless name =~ /\?\Z/
    return !!send(name[0..-2]) rescue NoMethodError
    false
  end
end
