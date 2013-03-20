class ChangeCreatedAtAttributeInFollows < ActiveRecord::Migration
  def up
	change_column :follows, :created_at, :datetime, :null => true, :default => nil
  end

  def down
  end
end
