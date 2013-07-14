class UserMailer < ActionMailer::Base
	default from: "Chris"

	def welcome_email
		user = "chrisaped@gmail.com"
		mail(to: user, subject: "What's up???")
	end
end