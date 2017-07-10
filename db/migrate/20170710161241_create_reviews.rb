class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :user_id, :integer
      t.column :content, :text
      t.column :location, :string

      t.timestamps
    end
  end
end
