class UserMailer < ActionMailer::Base
  default from: "registration@noughtsandcrosses.com"

  def registration_confirmation user
    @user = user
    mail to: user.email, subject: "Your sign-up was successful."
  end

end
