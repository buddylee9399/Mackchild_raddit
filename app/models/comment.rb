# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  link_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_comments_on_link_id  (link_id)
#  index_comments_on_user_id  (user_id)
#
# Foreign Keys
#
#  link_id  (link_id => links.id)
#  user_id  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
end
