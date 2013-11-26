class AddNametoEvents < ActiveRecord::Migration
  def change

    reversible do |dir|
      dir.up do
        execute <<-SQL
        DELETE from events;
        SQL
  end
end

    add_column :events, :name, :string
  end
end
