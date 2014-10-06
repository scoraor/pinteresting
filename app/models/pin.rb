class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :large => "400x400>", :thumb => "100x100>" }

	validates :image, presence: true
	validates :description, presence: true
end
