class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :type
      t.string :body
      t.integer :parent
      t.integer :activityid

      t.timestamps
    end
  end
end
