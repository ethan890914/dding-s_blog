class AddReviewToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :review, :text
  end
end
