class Person < ApplicationRecord
  attr_accessor :first_name, :second_name, :date_of_birth
  validates :first_name, presence: true
  validates :sex, absence: true
  validates :second_name, presence: true
  validates_each :date_of_birth do |record, attr, value|
    begin
    Date.parse(value)
    rescue
      record.errors.add(attr, 'Invalid date')
  end
  end
  has_many :relationships, dependent: :destroy
  has_many :reverse_relationships, dependent: :destroy, class_name: 'Relationship', foreign_key: 'related_person_id'
  has_ancestry
  def all_relationships
    relationships | reverse_relationships
  end
end
