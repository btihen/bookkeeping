class CreateChartAccountKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :chart_account_klasses do |t|
      t.string :lang_key,     null: false
      t.string :a_klass_num,  null: false
      t.string :s_klass_description

      t.timestamps

      t.index [:lang_key],    unique: true
      t.index [:a_klass_num], unique: true
    end
  end
end
