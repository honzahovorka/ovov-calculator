require 'spec_helper'

describe OVOV::Calculator::BallThrow do
  subject { OVOV::Calculator::BallThrow.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 4
    expect(subject.calculate).to eq 0
  end

  it 'calculates roughly 10 points for poor performance of 5 metres' do
    subject.performance = 5
    expect(subject.calculate).to eq 10
  end

  it 'calculates roughly 877 for performance of 70 metres' do
    subject.performance = 70
    expect(subject.calculate.round).to eq 877
  end

  it 'calculates roughly silly 1277 for performance of 100 metres' do
    subject.performance = 100
    expect(subject.calculate.round).to eq 1277
  end

  it 'calculates roughly crazy 1677 for performance of 130 metres' do
    subject.performance = 130
    expect(subject.calculate.round).to eq 1677
  end
end

