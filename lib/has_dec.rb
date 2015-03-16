require "delegate"

class HasDec < SimpleDelegator
  VERSION = "0.0.1"

  class << self
    def property(name)
      define_method(name) do
        self[name]
      end
    end

    def properties(*names)
      names.each { |name| property(name) }
    end
  end
end