class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :type
      t.integer :amount
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
