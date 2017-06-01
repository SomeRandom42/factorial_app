class CreateFactorials < ActiveRecord::Migration[5.0]
  def change
    create_table :factorials do |t|
      t.integer :result
      t.integer :number

      t.timestamps
    end
  end
end
