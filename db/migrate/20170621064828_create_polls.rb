class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :title
      t.string :choice

      t.timestamps
    end
  end
end
