class Project < ActiveRecord::Base
	validates :name, :description, presence: true
	has_many :tickets
end
