require 'spec_helper'

describe OVOV::Calculator::LongJump do
  subject { OVOV::Calculator::LongJump.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 0.9
    expect(subject.calculate).to eq 0
  end

  it 'calculates roughly 1083 for 6.9 metres' do
    subject.performance = 6.9
    expect(subject.calculate.round).to eq 1083
  end

  it 'calculates roughly silly 174 for 1.9 metres' do
    subject.performance = 1.9
    expect(subject.calculate.round).to eq 174
  end

  it 'calculates roughly crazy 1628 for 9.9 metres' do
    subject.performance = 9.9
    expect(subject.calculate.round).to eq 1628
  end
end
