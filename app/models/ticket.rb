class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :author, class_name: "User"
  belongs_to :state
  has_many :attachments, dependent: :destroy
  accepts_nested_attributes_for :attachments, reject_if: :all_blank
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  has_many :comments, dependent: :destroy
end
