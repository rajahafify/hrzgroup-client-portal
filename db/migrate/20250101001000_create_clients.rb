class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :company_name, null: false
      t.string :contact_no, null: false
      t.string :contact_email, null: false

      t.timestamps
    end

    add_index :clients, :company_name, unique: true
    add_index :clients, :contact_email, unique: true
  end
end
