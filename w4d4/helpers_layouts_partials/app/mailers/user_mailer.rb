class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url  = 'http://cat-rentals-r-us.com/login'
    mail(to: user.email, subject: 'Welcome to Cat-Rentals-R-Us')
  end
end
