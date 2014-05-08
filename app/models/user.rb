class User < ActiveRecord::Base
  has_many :group_memberships, foreign_key: :member_id
  has_many :groups, through: :group_memberships
end
