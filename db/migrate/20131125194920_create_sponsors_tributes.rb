class CreateSponsorsTributes < ActiveRecord::Migration
  def change
    create_table :sponsors_tributes do |t|
      t.integer "person_id"
      t.integer "tribute_id"
      t.timestamps
    end
  end
end
