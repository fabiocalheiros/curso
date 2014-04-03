class User < ActiveRecord::Base

	# Constants
	FEMALE = 1;
	MALE = 2;

	# Validations
	validates :email, presence: true, allow_blank: false
	validates :name, presence: true, allow_blank: false
	validates :gender, presence: true, if: :adulthood
	validates_uniqueness_of :email

	# Associations

	# Scopes

	# Public methods
	def adulthood
		self.age.present? and self.age > 18
	end
end