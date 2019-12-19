
# ACCOUNT KLASSES
ak_assets           = Chart::AccountKlass.create(lang_key: 'assets',       a_klass_num: "1")
ak_claims           = Chart::AccountKlass.create(lang_key: 'claims',       a_klass_num: "2")
ak_core_income      = Chart::AccountKlass.create(lang_key: 'core_income',  a_klass_num: "3")
ak_inventory_expenses = Chart::AccountKlass.create(lang_key: 'inventory',    a_klass_num: "4")
ak_personell_expenses = Chart::AccountKlass.create(lang_key: 'personell',    a_klass_num: "5")
ak_operations_expenses = Chart::AccountKlass.create(lang_key: 'operations',   a_klass_num: "6")
ak_secondary_income  = Chart::AccountKlass.create(lang_key: 'other_income', a_klass_num: "7")
ak_irregular_income  = Chart::AccountKlass.create(lang_key: 'secondary_expenses', a_klass_num: "8")

# ACCOUNT GROUPS
ag_short_term_assets = Chart::AccountGroup.create(lang_key: 'short_term_assets', a_group_num: '10', account_klass: ak_assets)
ag_long_term_assets  = Chart::AccountGroup.create(lang_key: 'long_term_assets',  a_group_num: '14', account_klass: ak_assets)
#
ag_short_claims      = Chart::AccountGroup.create(lang_key: 'short_liabilities', a_group_num: '20', account_klass: ak_claims)
ag_long_claims       = Chart::AccountGroup.create(lang_key: 'long_liabilities',  a_group_num: '24', account_klass: ak_claims)
ag_equity_capital    = Chart::AccountGroup.create(lang_key: 'equity_capital',    a_group_num: '28', account_klass: ak_claims)
#
ag_product_revenue   = Chart::AccountGroup.create(lang_key: 'product_revenue',   a_group_num: '30', account_klass: ak_core_income)
ag_inventory_revenue = Chart::AccountGroup.create(lang_key: 'inventory_revenue', a_group_num: '32', account_klass: ak_core_income)
ag_service_revenue   = Chart::AccountGroup.create(lang_key: 'service_revenue',   a_group_num: '34', account_klass: ak_core_income)
ag_other_revenue     = Chart::AccountGroup.create(lang_key: 'other_revenue',     a_group_num: '36', account_klass: ak_core_income)
ag_lost_revenue      = Chart::AccountGroup.create(lang_key: 'lost_revenue',      a_group_num: '38', account_klass: ak_core_income)
#
ag_material_expense  = Chart::AccountGroup.create(lang_key: 'material_expense',  a_group_num: '40', account_klass: ak_inventory_expenses)
ag_inventory_expense = Chart::AccountGroup.create(lang_key: 'inventory_expense', a_group_num: '42', account_klass: ak_inventory_expenses)
#
ag_personnel_wages   = Chart::AccountGroup.create(lang_key: 'personnel_wages',  a_group_num: '50', account_klass: ak_personell_expenses)
ag_social_system     = Chart::AccountGroup.create(lang_key: 'social_system',    a_group_num: '57', account_klass: ak_personell_expenses)
ag_personnel_other   = Chart::AccountGroup.create(lang_key: 'personnel_other',  a_group_num: '58', account_klass: ak_personell_expenses)
#
ag_rental_expenses      = Chart::AccountGroup.create(lang_key: 'rental_expenses',     a_group_num: '60', account_klass: ak_operations_expenses)
ag_maintenance_repairs  = Chart::AccountGroup.create(lang_key: 'maintenance_repairs', a_group_num: '61', account_klass: ak_operations_expenses)
ag_transport_expenses   = Chart::AccountGroup.create(lang_key: 'transport_expenses',  a_group_num: '62', account_klass: ak_operations_expenses)
ag_insurance_expenses   = Chart::AccountGroup.create(lang_key: 'insurance_expenses',  a_group_num: '63', account_klass: ak_operations_expenses)
ag_energy_waste_exp     = Chart::AccountGroup.create(lang_key: 'energy_waste',        a_group_num: '64', account_klass: ak_operations_expenses)
ag_office_admin_expenses = Chart::AccountGroup.create(lang_key: 'office_admin_expenses', a_group_num: '65', account_klass: ak_operations_expenses)
ag_advertising_expenses = Chart::AccountGroup.create(lang_key: 'advertising_expenses', a_group_num: '66', account_klass: ak_operations_expenses)
ag_other_operations     = Chart::AccountGroup.create(lang_key: 'other_operations',    a_group_num: '67', account_klass: ak_operations_expenses)
ag_depreciation         = Chart::AccountGroup.create(lang_key: 'depreciation',        a_group_num: '68', account_klass: ak_operations_expenses)
ag_interest_income      = Chart::AccountGroup.create(lang_key: 'interest_charged',    a_group_num: '69', account_klass: ak_operations_expenses)
#
ag_secondary_expenses   = Chart::AccountGroup.create(lang_key: 'secondary_expenses',  a_group_num: '70', account_klass: ak_secondary_income)
ag_secondary_revenues   = Chart::AccountGroup.create(lang_key: 'secondary_revenues',  a_group_num: '72', account_klass: ak_secondary_income)
ag_real_estate_expenses = Chart::AccountGroup.create(lang_key: 'real_estate_expenses', a_group_num: '74', account_klass: ak_secondary_income)
ag_real_estate_revenues = Chart::AccountGroup.create(lang_key: 'real_estate_revenues', a_group_num: '76', account_klass: ak_secondary_income)
#
ag_unexpected_expenses  = Chart::AccountGroup.create(lang_key: 'unexpected_expenses', a_group_num: '80', account_klass: ak_irregular_income)
ag_unexpected_revenues  = Chart::AccountGroup.create(lang_key: 'unexpected_revenues', a_group_num: '82', account_klass: ak_irregular_income)
ag_one_time_expenses    = Chart::AccountGroup.create(lang_key: 'one_time_expenses',   a_group_num: '84', account_klass: ak_irregular_income)
ag_one_time_revenues    = Chart::AccountGroup.create(lang_key: 'one_time_revenues',   a_group_num: '86', account_klass: ak_irregular_income)
