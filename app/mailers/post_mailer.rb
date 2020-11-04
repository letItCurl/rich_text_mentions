class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.user_mention.subject
  #
  def user_mention(user, post)
    @user, @post = user, post

    mail to: user.email, subject: "you have been notified !"
  end
end
