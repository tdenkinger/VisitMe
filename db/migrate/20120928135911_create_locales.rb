class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string     :name
      t.string     :address
      t.boolean    :has_visited
      t.timestamps
    end
  end
end
