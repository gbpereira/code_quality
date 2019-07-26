require 'rails_helper'

RSpec.describe Person, type: :model do
  context 'associations' do
    it { is_expected.to have_many :animals }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :birth }
  end
end
