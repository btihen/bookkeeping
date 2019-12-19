class CreateChartAccountGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :chart_account_groups do |t|
      t.string :lang_key,   null: false
      t.string :a_group_num,  null: false
      t.string :s_group_description

      t.belongs_to :account_klass, null: false, class_name: 'Chart::AccountKlass'

      t.timestamps

      t.index [:lang_key],  unique: true
      t.foreign_key :chart_account_klasses, column: :account_klass_id, index: true
    end
  end
end
