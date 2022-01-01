class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.boolean :active, default: true
      t.string :age
      t.string :company

      t.timestamps
    end
  end
end
