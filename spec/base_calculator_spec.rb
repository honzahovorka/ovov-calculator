require 'spec_helper'

describe OVOV::Calculator::Base do

  subject { OVOV::Calculator::Base.new }

  it 'has 0 points on initialize' do
    expect(subject.points).to eq 0
  end

  it 'has 0 performance initialized' do
    expect(subject.performance).to eq 0
  end

  context '.calculate' do
    it 'raise an error' do
      expect{ subject.calculate }.to raise_error(OVOV::CalculatorError)
    end
  end

end
