class CreateHostels < ActiveRecord::Migration[6.1]
  def change
    create_table :hostels do |t|
      t.string :h_name
      t.string :h_phone

      t.timestamps
    end
  end
end
