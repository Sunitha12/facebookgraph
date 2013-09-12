class CreateFbdetails < ActiveRecord::Migration
  def change
    create_table :fbdetails do |t|
    	t.string :uid
    	t.string :user_name
    	t.string :name
    	t.string :gender
    	t.string :hometown
    	t.string :location
    	t.string :bio
        t.timestamps
    end
  end
end
