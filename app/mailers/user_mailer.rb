class UserMailer < ActionMailer::Base
  default from: "registration@noughtsandcrosses.com"

  def registration_confirmation user
    @user = user
    mail to: user.email, subject: "Your sign-up was successful."
  end

  # def invite_friend user_email #define in games controller?
  #   @user = User.new(params[:username => 'guest', :password => 'guest')
  #   @user
  # end

end
