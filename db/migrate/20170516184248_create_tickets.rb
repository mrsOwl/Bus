class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.references :bus, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
