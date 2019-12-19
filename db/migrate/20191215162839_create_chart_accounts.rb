class CreateChartAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :chart_accounts do |t|
      t.string :lang_key,       null: false
      t.string :debit_effect,   null: false
      t.string :credit_effect,  null: false
      t.string :a_account_num,  null: false
      t.string :a_account_description

      t.belongs_to :sub_statement,     null: false, class_name: 'Sheets::SubStatement'
      t.belongs_to :account_sub_group, null: false, class_name: 'Chart::AccountGroup'

      t.timestamps

      t.index [:lang_key],              unique: true
      t.index [:a_account_num],         unique: true
      t.foreign_key :sheets_sub_statements,    column: :sub_statement_id,     index: true
      t.foreign_key :chart_account_sub_groups, column: :account_sub_group_id, index: true
    end
  end
end
