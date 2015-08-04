class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :contents
      t.string :search_terms
      t.string :name

      t.timestamps null: false
    end
  end
end
