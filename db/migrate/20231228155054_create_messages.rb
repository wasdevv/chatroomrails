class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :messages
      t.text :body

      t.timestamps
    end
  end
end
