class UserMailer < ActionMailer::Base
  default from: "son@lincolnix.net"

  def welcome_email(user)
    @user = user
    @url = 'http://lincolnixweb.herokuapp.com'
    mail(to: @user.email, subject: 'test welcome email')
  end

end
