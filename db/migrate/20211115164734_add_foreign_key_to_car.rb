class AddForeignKeyToCar < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :cars, :users
  end
end
