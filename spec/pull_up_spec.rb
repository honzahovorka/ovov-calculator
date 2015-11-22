require 'spec_helper'

describe OVOV::Calculator::PullUp do
  subject { OVOV::Calculator::PullUp.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 4
    expect(subject.calculate).to eq 0
  end

  it 'calculates 10 points for poor performace of 5' do
    subject.performance = 5
    expect(subject.calculate.round).to eq 10
  end

  it 'calculates 810 points for performace of 85' do
    subject.performance = 85
    expect(subject.calculate.round).to eq 810
  end

  it 'calculates 1510 points for performace of 155' do
    subject.performance = 155
    expect(subject.calculate.round).to eq 1510
  end

  it 'calculates 1810 points for exceptional performace of 185' do
    subject.performance = 185
    expect(subject.calculate.round).to eq 1810
  end
end
