class InviteFriendsMailer < ApplicationMailer
  default from: "the.team.at.recess@gmail.com"

  def invite_email(email)
    @trip = Trip.first
    @email = email
    mail(to: @email, subject: 'Test')
  end
end
