# Preview all emails at http://localhost:3000/rails/mailers/invite_friends_mailer
class InviteFriendsMailerPreview < ActionMailer::Preview
  def invite_friends_preview
    InviteFriendsMailer.invite_email("lachead@ncsu.edu")
  end
end
