class ChangeUpdatedAtAttributeInFollows < ActiveRecord::Migration
  def up
	change_column :follows, :updated_at, :datetime, :null => true, :default => nil
  end

  def down
  end
end
