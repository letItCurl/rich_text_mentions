class Post < ApplicationRecord
  has_rich_text :body
  #belongs_to :user

  after_create :send_notifications

  def send_notifications
    user = user_mentions # - [user]

    user.each do |user|
      PostMailer.user_mention(user, self).deliver_now
    end
  end

  def user_mentions
    @user ||= body.body.attachments.select {|a| a.attachable.class == User}.map(&:attachable).uniq
  end
end
