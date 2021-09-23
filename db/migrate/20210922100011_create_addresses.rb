class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :notable, polymorphic: true, null: false
      t.text :content

      t.timestamps
    end
  end
end
