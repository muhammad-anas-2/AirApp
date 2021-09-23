class CreateColleges < ActiveRecord::Migration[6.1]
  def change
    create_table :colleges do |t|
      t.string :c_name
      t.string :c_phone

      t.timestamps
    end
  end
end
