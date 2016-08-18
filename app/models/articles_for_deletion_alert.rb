# frozen_string_literal: true
# == Schema Information
#
# Table name: alerts
#
#  id             :integer          not null, primary key
#  course_id      :integer
#  user_id        :integer
#  article_id     :integer
#  revision_id    :integer
#  type           :string(255)
#  email_sent_at  :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  message        :text(65535)
#  target_user_id :integer
#

# Alert for when an article has been nominated for deletion on English Wikipedia
class ArticlesForDeletionAlert < Alert
  def main_subject
    "#{article.title} — #{course&.slug}"
  end

  def url
    article_url(article)
  end
end
