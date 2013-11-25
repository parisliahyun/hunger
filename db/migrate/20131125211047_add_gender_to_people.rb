class AddGenderToPeople < ActiveRecord::Migration
  def change

    reversible do |dir|
      dir.up do
        execute <<-SQL
        DELETE from people;
        SQL
  end
end

    add_column :people, :gender, :string
  end
end

