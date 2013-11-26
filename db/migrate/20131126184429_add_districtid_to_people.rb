class AddDistrictidToPeople < ActiveRecord::Migration
  def change
    change_table :people do |t|
      t.references :district, index: true
    end
  end

  def down
    change_table :people do |t|
      t.remove :district_id
    end
  end
end