require 'spec_helper'

describe OVOV::Calculator::Swimming do
  subject { OVOV::Calculator::Swimming.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 24
    expect(subject.calculate).to eq 0
  end

  it 'calculates roughly 10 points for poor performance of 25 metres' do
    subject.performance = 25
    expect(subject.calculate.round).to eq 10
  end

  it 'calculates roughly 977 for performance of 170 metres' do
    subject.performance = 170
    expect(subject.calculate.round).to eq 977
  end

  it 'calculates roughly silly 1310 for performance of 220 metres' do
    subject.performance = 220
    expect(subject.calculate.round).to eq 1310
  end

  it 'calculates roughly crazy 1777 for performance of 290 metres' do
    subject.performance = 290
    expect(subject.calculate.round).to eq 1777
  end
end
