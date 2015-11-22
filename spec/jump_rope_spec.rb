require 'spec_helper'

describe OVOV::Calculator::JumpRope do
  subject { OVOV::Calculator::JumpRope.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 0
    expect(subject.calculate).to eq 0
  end

  it 'calculates 10 points for poor performace of 30 jumps' do
    subject.performance = 30
    expect(subject.calculate).to eq 10
  end

  it 'calculates roughly 810 for 270 jumps' do
    subject.performance = 270
    expect(subject.calculate).to eq 810
  end

  it 'calculates roughly silly 1210 for 390 jumps' do
    subject.performance = 390
    expect(subject.calculate.round).to eq 1210
  end

  it 'calculates roughly crazy 1740 for 550 jumps' do
    subject.performance = 550
    expect(subject.calculate.round).to eq 1740
  end
end

