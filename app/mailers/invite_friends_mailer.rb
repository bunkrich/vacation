class InviteFriendsMailer < ApplicationMailer
  helper :application
  default from: "the.team.at.recess@gmail.com"

  def invite_email(email)
    mail(:to => email, :subject => 'Test')
  end
end
