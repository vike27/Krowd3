class AddFieldsToContest < ActiveRecord::Migration
  def change
  	add_column :contests, :featured_image_id, :integer
  	add_column :contests, :title, :text
  	add_column :contests, :short_description, :text
  	add_column :contests, :description, :text
  end
end
