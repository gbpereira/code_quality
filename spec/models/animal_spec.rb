require 'rails_helper'

RSpec.describe Animal, type: :model do
  it { is_expected.to belong_to :owner }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :cost }
  it { is_expected.to validate_presence_of :kind }
  it { is_expected.to validate_presence_of :owner }

  # custom validations
  context 'should validate that' do
    it 'swallow owners must be overage' do
      owner = FactoryBot.create(:person, birth: Date.today - 17.years)
      animal = FactoryBot.build(:animal, owner: owner, kind: Animal::kinds[:swallow])

      expect(animal).to_not be_valid
      expect(animal.errors[:owner]).to include(I18n.t('activerecord.errors.models.animal.attributes.owner.overage'))

      owner.update(birth: Date.today - 19.years)
      expect(animal).to be_valid
    end

    it 'cat owners name must not start with `A`' do
      owner = FactoryBot.create(:person, :axl)
      animal = FactoryBot.build(:animal, :cat, owner: owner)

      expect(animal).to_not be_valid
      expect(animal.errors[:owner]).to include(I18n.t('activerecord.errors.models.animal.attributes.owner.invalid_initial'))

      owner.update(name: 'Billy Jean')
      expect(animal).to be_valid
    end

    it 'owners must not exceed monthly cost' do
      owner = FactoryBot.create(:animal).owner
      animal = FactoryBot.build(:animal, :dog, cost: 1.0, owner: owner)
      owner.reload

      expect(animal).to_not be_valid
      expect(animal.errors[:owner]).to include(I18n.t('activerecord.errors.models.animal.attributes.owner.cost_exceeded'))
    end
  end
end
