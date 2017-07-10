class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.column :status, :string
      t.column :account_id, :integer
      t.column :total, :decimal, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
