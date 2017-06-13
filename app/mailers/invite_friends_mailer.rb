class InviteFriendsMailer < ApplicationMailer
  helper :application
  default from: "the.team.at.recess@gmail.com"

  def invite_email(email, trip)
    mail(:to => email, :subject => "You've been invited to join a trip!")
  end
end
