class AddUserToArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :user
    add_reference :users, :article
  end
end
