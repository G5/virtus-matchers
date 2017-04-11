# encoding: utf-8
require 'spec_helper'

RSpec.describe Virtus::Matchers::BeAValueObjectMatcher do
  class Example
  end

  class ExampleValueObject
    include Virtus.value_object
  end

  let(:matcher) { described_class.new }

  context 'when Virtus::ValueObject is included' do
    it 'should match' do
      expect(matcher.matches?(ExampleValueObject)).to be true
    end

    it 'should have a description' do
      matcher.matches?(ExampleValueObject)
      expect(matcher.description).to eq 'be a value object'
    end
  end

  context 'when Virtus::ValueObject is not included' do
    it 'should not match' do
      expect(matcher.matches?(Example)).to be false
    end

    it 'should have a failure message' do
      matcher.matches?(Example)
      expect(matcher.failure_message).to eq "expected #{Example} to be a value object"
    end
  end
end
