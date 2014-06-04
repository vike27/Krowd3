class AddImageToContests < ActiveRecord::Migration
  def change
    add_column :contests, :image_uid,  :string
	add_column :contests, :image_name, :string
  end
end
