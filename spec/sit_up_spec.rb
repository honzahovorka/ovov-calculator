require 'spec_helper'

describe OVOV::Calculator::SitUp do
  subject { OVOV::Calculator::SitUp.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 9
    expect(subject.calculate).to eq 0
  end

  it 'calculates roughly 10 points for poor performance of 10 sit ups' do
    subject.performance = 10
    expect(subject.calculate).to eq 10
  end

  it 'calculates roughly 610 for performance of 70 sit ups' do
    subject.performance = 70
    expect(subject.calculate).to eq 610
  end

  it 'calculates roughly silly 1310 for performance of 140 sit ups' do
    subject.performance = 140
    expect(subject.calculate).to eq 1310
  end

  it 'calculates roughly crazy 1710 for performance of 180 sit ups' do
    subject.performance = 180
    expect(subject.calculate).to eq 1710
  end
end
