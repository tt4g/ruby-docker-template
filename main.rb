#! /usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH.unshift(::File.expand_path('./lib', ::File.dirname(__FILE__)))

require 'ruby_project/ruby_project'

if __FILE__ == $PROGRAM_NAME
  foo = ::RubyProject::Foo.new(name: 'foo')

  puts "Hello, #{foo.name}!"
end
