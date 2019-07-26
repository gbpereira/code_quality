class Animal < ApplicationRecord
  belongs_to :owner, class_name: 'Person'

  enum kind: {
    horse: 0,
    dog: 1,
    parrot: 2,
    llama: 3,
    iguana: 4,
    duckbill: 5,
    cat: 6,
    swallow: 7
  }

  validates_presence_of :name, :cost, :kind, :owner
  validate :swallow_owner_minimun_age, if: :swallow?
  validate :cat_owner_name_initial, if: :cat?
  validate :owner_monthly_cost, if: :cost

  private

  def swallow_owner_minimun_age
    errors.add(:owner, :overage) if (Date.today.year - owner.birth.year) <= 18
  end

  def cat_owner_name_initial
    errors.add(:owner, :invalid_initial) if owner&.name[0].downcase == 'a'
  end

  def owner_monthly_cost
    owner_cost = owner&.animals.map { |animal| animal.cost }.reduce(0.0, :+)
    errors.add(:owner, :cost_exceeded) if (owner_cost + self.cost) > 1_000
  end
end
