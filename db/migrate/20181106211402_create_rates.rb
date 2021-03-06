class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :number
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
    end
  end
end
