require 'spec_helper'

describe OVOV::Calculator::PushUp do
  subject { OVOV::Calculator::PushUp.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 4
    expect(subject.calculate).to eq 0
  end

  it 'calculates roughly 10 points for poor performance of 5 push ups' do
    subject.performance = 5
    expect(subject.calculate.round).to eq 10
  end

  it 'calculates roughly 939 for performance of 70 push ups' do
    subject.performance = 70
    expect(subject.calculate.round).to eq 939
  end

  it 'calculates roughly silly 1224 for performance of 90 push ups' do
    subject.performance = 90
    expect(subject.calculate.round).to eq 1224
  end

  it 'calculates roughly crazy 1796 for performance of 130 push ups' do
    subject.performance = 130
    expect(subject.calculate.round).to eq 1796
  end
end
