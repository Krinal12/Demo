class AddConditionToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :condition, :string
  end
end
