require 'spec_helper'

describe OVOV::Calculator::Run do
  subject { OVOV::Calculator::Run.new }

  context '.calculate' do
    it 'calculates 0 points for poor performace' do
      subject.performance = '7:35'
      expect(subject.calculate).to eq 0
    end

    it 'calculates 0 points for clearly impossible performace' do
      subject.performance = '1:00'
      expect(subject.calculate).to eq 0
    end

    it 'calculates roughly 1230 points for 2:15' do
      subject.performance = '2:15'
      expect(subject.calculate.round).to eq 1230
    end
  end

  context '.convert_time_to_seconds' do
    it 'converts time 2:00 to 120s' do
      subject.performance = '2:00'
      expect(subject.performance).to eq 120
    end

    it 'converts time 2:40 to 160s' do
      subject.performance = '2:40'
      expect(subject.performance).to eq 160
    end
  end

end
