class AddCategoryToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :category, :string, default: 'buy'
  end
end
