class RemoveColumnFormPortfolios < ActiveRecord::Migration[6.0]
  def change
    remove_column :portfolios, :main_image 
    remove_column :portfolios, :thumb_image 
  end
end
