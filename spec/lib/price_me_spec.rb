# frozen_string_literal: true

describe PriceMe do
  describe '#bootstrap' do
    before { PriceMe.bootstrap }
    subject { described_class.instance_variable_get(:@global_config) }

    it 'loads a global config' do
      expect(subject).not_to be_nil
    end
  end

  describe '#materials_cost' do
    context 'with a base config' do
      before { PriceMe.bootstrap }
      subject { described_class.base_price }

      it 'calculates the base list price' do
        expect(subject).to eq 116.0
      end
    end
  end
end
