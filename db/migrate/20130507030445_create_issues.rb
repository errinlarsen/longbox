class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
