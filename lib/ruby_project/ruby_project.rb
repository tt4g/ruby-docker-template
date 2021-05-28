# frozen_string_literal: true

module RubyProject
  class Foo
    attr_reader :name

    def initialize(name:)
      @name = name
    end
  end
end
