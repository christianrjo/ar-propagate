class Event < ActiveRecord::Base
	
	validates :title, presence: true { message: 'Title must be present'} , uniqueness: true { message: 'Title is already taken'}
	validates :date, presence: true, after: Date.now
	validates
	validates :organizer_name, presence: true
	validates :organizer_email, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, message: 'Email must be valid!' }
end
