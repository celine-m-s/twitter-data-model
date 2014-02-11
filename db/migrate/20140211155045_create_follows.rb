class CreateFollows < ActiveRecord::Migration
  def change
    create_table :followships do |t|
    	t.belongs_to :follower
    	t.belongs_to :followee
      t.timestamps
    end
  end
end
