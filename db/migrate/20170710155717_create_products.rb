class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :decimal, :precision => 10, :scale => 2
      t.column :care, :text
      t.column :origin, :string
      t.column :species, :string
      t.column :type, :string

      t.timestamps
    end
  end
end
