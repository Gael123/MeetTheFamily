class RelationshipType < ApplicationRecord
  attr_accessor :name, :backward_name
  has_many :relationships, dependent: :destroy
  validates :name, presence: true
  validates :backward_name, presence: true

  # before_save do
  #   self.backward_name = nil if backward_name.blank?
  # end

  def name_of_backward_relationship
    backward_name || name
  end
end
