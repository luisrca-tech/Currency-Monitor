class CreateCurrencies < ActiveRecord::Migration[8.0]
  def change
    create_table :currencies do |t|
      t.string :code
      t.string :name
      t.string :symbol

      t.timestamps
    end

    add_index :currencies, :code, unique: true
  end
end
