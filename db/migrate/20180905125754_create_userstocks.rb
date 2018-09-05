class CreateUserstocks < ActiveRecord::Migration[5.2]
  def change
    create_table :userstocks do |t|
      t.references :user, foreign_key: true
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
