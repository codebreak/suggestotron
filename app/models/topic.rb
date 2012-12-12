class Topic < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user

  def user_email
    self.user.try(:email) || 'Anonymous'
  end
end
