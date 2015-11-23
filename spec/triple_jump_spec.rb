require 'spec_helper'

describe OVOV::Calculator::TripleJump do
  subject { OVOV::Calculator::TripleJump.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 2.1
    expect(subject.calculate).to eq 0
  end

  it 'calculates roughly 10 points for poor performance of 2.2 metres' do
    subject.performance = 2.2
    expect(subject.calculate.round).to eq 10
  end

  it 'calculates roughly 979 for performance of 8.5 metres' do
    subject.performance = 8.5
    expect(subject.calculate.round).to eq 979
  end

  it 'calculates roughly silly 1210 for performance of 10 metres' do
    subject.performance = 10
    expect(subject.calculate.round).to eq 1210
  end

  it 'calculates roughly crazy 1825 for performance of 14 metres' do
    subject.performance = 14
    expect(subject.calculate.round).to eq 1825
  end
end
