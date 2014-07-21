require "sartre/version"

module Sartre
  protected
  def existential?(name)
    name =~ /\?\Z/
  end
  
  def try?(name)
    !!send(name)
  end
end

class Object
  include Sartre
  
  def method_missing name, *arguments
    super unless existential? name
    method = name[0..-2]
    return false unless respond_to? method
    try? method
  end
end
