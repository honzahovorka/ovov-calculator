require 'spec_helper'

describe OVOV::Calculator::Dribbling do
  subject { OVOV::Calculator::Dribbling.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 119
    expect(subject.calculate).to eq 0
  end

  it 'calculates roughly 10 points for poor performance of 120 metres' do
    subject.performance = 120
    expect(subject.calculate.round).to eq 10
  end

  it 'calculates roughly 968 for performance of 350 metres' do
    subject.performance = 350
    expect(subject.calculate.round).to eq 968
  end

  it 'calculates roughly silly 1177 for performance of 400 metres' do
    subject.performance = 400
    expect(subject.calculate.round).to eq 1177
  end

  it 'calculates roughly crazy 1885 for performance of 570 metres' do
    subject.performance = 570
    expect(subject.calculate.round).to eq 1885
  end
end
