class CreateUsparams < ActiveRecord::Migration[5.1]
  def change
    create_table :usparams do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age

      t.timestamps
    end
  end
end
