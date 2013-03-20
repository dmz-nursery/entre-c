class ChangeFollowSchema < ActiveRecord::Migration
change_table :follows do |t|
  t.remove :id, :user_id
end
end
