require 'spec_helper'

describe OVOV::Calculator::MedicineBall do
  subject { OVOV::Calculator::MedicineBall.new }

  it 'calculates 0 points for poor performace' do
    subject.performance = 2.9
    expect(subject.calculate).to eq 0
  end

  it 'calculates 10 points for poor performace of 3 metres' do
    subject.performance = 3
    expect(subject.calculate.round).to eq 10
  end

  it 'calculates roughly 803 for 14.9 metres' do
    subject.performance = 14.9
    expect(subject.calculate.round).to eq 803
  end

  it 'calculates roughly crazy 1537 for 25.9 metres' do
    subject.performance = 25.9
    expect(subject.calculate.round).to eq 1537
  end
end
