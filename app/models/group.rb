class Group < ActiveRecord::Base
  extend FriendlyId
  friendly_id :subdomain, use: :slugged
end
