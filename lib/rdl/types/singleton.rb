require_relative 'type'

module RDL::Type
  class SingletonType < Type
    attr_reader :val

    @@cache = {}

    class << self
      alias :__new__ :new
    end

    def self.new(val)
      t = @@cache[val]
      return t if t
      t = self.__new__ val
      return (@@cache[val] = t) # assignment evaluates to t
    end

    def initialize(val)
      @val = val
    end

    def eql?(other)
      self == other
    end

    def ==(other)
      return (other.instance_of? self.class) && (other.val == @val)
    end

    def hash # :nodoc:
      return @val.hash
    end

    def to_s(inst: nil)
      val.to_s
    end

    def member?(obj, inst: nil)
      obj.nil? || obj == @val
    end

    def instantiate(inst)
      return self
    end
  end
end