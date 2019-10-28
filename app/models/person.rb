class Person < ApplicationRecord
  attr_accessible :first_name, :second_name
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :date_of_birth, allow_nil: true, format: {
    with: /\A\d{4}(-\d{1,2}(-\d{1,2})?)?\z/
  }
  has_many :relationships, dependent: :destroy
  has_many :reverse_relationships, dependent: :destroy, class_name: 'Relationship', foreign_key: 'related_person_id'

  def all_relationships
    relationships | reverse_relationships
  end
end
