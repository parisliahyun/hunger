class CreateEscorts < ActiveRecord::Migration
  def change
    create_table :escorts do |t|
      t.integer "person_id"
      t.integer "tribute_id"
      t.timestamps
    end
  end
end
