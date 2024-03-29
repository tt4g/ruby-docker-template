# frozen_string_literal: true

require 'ruby_project/ruby_project'

::RSpec.describe(::RubyProject::Foo) do
  describe '#name' do
    it 'returns name' do
      foo = described_class.new(name: 'foo')
      expect(foo.name).to(eq('foo'))
    end
  end
end
