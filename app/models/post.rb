class Post < ApplicationRecord
  has_rich_text :body

  def send_notifications
    user = user_mentions
    user.each do |user|
      
    end
  end

  def user_mentions
    @user ||= body.body.attachments.select {|a| a.attachable.class == User}.map(&:attachable).uniq
  end
end
