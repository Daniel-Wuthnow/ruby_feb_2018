class User < ActiveRecord::Base
	validates :first_name, :last_name, presence: true, length: { minimum: 2}
	validates :age, presence: true, numericality: {greater_than: 10, less_than: 150}
	validates :email, presence: true
end
