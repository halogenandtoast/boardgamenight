class CreateGroupMemberships < ActiveRecord::Migration
  def change
    create_table :group_memberships do |t|
      t.belongs_to :group, index: true
      t.belongs_to :member, index: true
    end
  end
end
