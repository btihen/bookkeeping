class CreateChartAccountSubGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :chart_account_sub_groups do |t|
      t.string :lang_key,   null: false
      t.string :a_sub_num,  null: false
      t.string :s_sub_description

      t.belongs_to :account_group, null: false, class_name: 'Chart::AccountGroup'

      t.timestamps

      t.index [:lang_key],  unique: true
      t.index [:a_sub_num], unique: true
      t.foreign_key :chart_account_groups, column: :account_group_id, index: true
    end
  end
end
