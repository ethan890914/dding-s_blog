class AddRatingToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :rating, :float
  end
end
