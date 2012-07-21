class Topic < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :author

  def author_email
    self.author.try(:email) || 'Anonymous'
  end
end
