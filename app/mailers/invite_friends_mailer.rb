class InviteFriendsMailer < ApplicationMailer
  helper :application
  default from: "the.team.at.recess@gmail.com"

  def invite_email(email, trip)
    @trip = trip.to_s
    mail(:to => email, :subject => "You've been invited to join a trip!", :trip=> @trip)
  end
end
