class CreateStatusConnectionsJoinTable < ActiveRecord::Migration
  def up
  	create_table :status_connections, :force => true, :id => false do |t|
  	t.integer :status_a_id, :null => false
  	t.integer :status_b_id, :null => false
     end
  end	

  def down
  end
end
