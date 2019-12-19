# Assets
account_liquid_assets      = Chart::Account.create(lang_key: 'liquid_assets',      a_account_num: '1000', account_sub_group: as_sub_liquid_assets)
account_recievables        = Chart::Account.create(lang_key: 'recievables',        a_account_num: '1100', account_sub_group: as_sub_recievables)
account_inventory_assets   = Chart::Account.create(lang_key: 'inventory',          a_account_num: '1200', account_sub_group: as_sub_inventory_assets)
#
account_long_term_finances = Chart::Account.create(lang_key: 'long_term_finances', a_account_num: '1400', account_sub_group: as_sub_long_term_finances)
account_tangable_assets    = Chart::Account.create(lang_key: 'tangable_assets',    a_account_num: '1500', account_sub_group: as_sub_tangable_assets)
account_real_estate        = Chart::Account.create(lang_key: 'real_estate',        a_account_num: '1600', account_sub_group: as_sub_real_estate)
account_intangable_assets  = Chart::Account.create(lang_key: 'intangable_assets',  a_account_num: '1700', account_sub_group: as_sub_intangable_assets)
#####
account_short_fiscal_debts = Chart::Account.create(lang_key: 'short_term_fiscal_debts', a_account_num: '2100', account_sub_group: as_sub_short_fiscal_debts)
account_other_short_debts  = Chart::Account.create(lang_key: 'other_short_term_debts',  a_account_num: '2200', account_sub_group: as_sub_other_short_debts)
account_accounts_payable   = Chart::Account.create(lang_key: 'accounts_payable',        a_account_num: '2000', account_sub_group: as_sub_accounts_payable)
#
account_long_fiscal_debts  = Chart::Account.create(lang_key: 'long_term_fiscal_debts', a_account_num: '2400', account_sub_group: as_sub_long_fiscal_debts)
account_other_long_debts   = Chart::Account.create(lang_key: 'other_short_term_debts', a_account_num: '2500', account_sub_group: as_sub_other_long_debts)
account_other_long_claims  = Chart::Account.create(lang_key: 'other_long_claims',      a_account_num: '2600', account_sub_group: as_sub_other_long_claims)
#
account_capital_equity     = Chart::Account.create(lang_key: 'sub_capital_equity',     a_account_num: '2800', account_sub_group: as_sub_capital_equity)
#####
account_product_revenue   = Chart::Account.create(lang_key: 'product_revenue',   a_account_num: '3000', account_sub_group: as_sub_product_revenue)
account_inventory_revenue = Chart::Account.create(lang_key: 'inventory_revenue', a_account_num: '3200', account_sub_group: as_sub_inventory_revenue)
account_service_revenue   = Chart::Account.create(lang_key: 'service_revenue',   a_account_num: '3400', account_sub_group: as_sub_service_revenue)
account_other_revenue     = Chart::Account.create(lang_key: 'other_revenue',     a_account_num: '3600', account_sub_group: as_sub_other_revenue)
account_lost_revenue      = Chart::Account.create(lang_key: 'lost_revenue',      a_account_num: '3800', account_sub_group: as_sub_lost_revenue)
#####
account_material_expense  = Chart::Account.create(lang_key: 'material_expense',  a_account_num: '4000', account_sub_group: as_sub_material_expense)
account_inventory_expense = Chart::Account.create(lang_key: 'inventory_expense', a_account_num: '4200', account_sub_group: as_sub_inventory_expense)
#
account_personnel_wages       = Chart::Account.create(lang_key: 'personnel_wages',  a_account_num: '5000', account_sub_group: as_sub_personnel_wages)
account_social_system         = Chart::Account.create(lang_key: 'social_system',    a_account_num: '5700', account_sub_group: as_sub_social_system)
account_personnel_other       = Chart::Account.create(lang_key: 'personnel_other',  a_account_num: '5800', account_sub_group: as_sub_personnel_other)
#
account_rental_expenses       = Chart::Account.create(lang_key: 'rental_expenses',     a_account_num: '6000', account_sub_group: as_sub_rental_expenses)
account_maintenance_repairs   = Chart::Account.create(lang_key: 'maintenance_repairs', a_account_num: '6100', account_sub_group: as_sub_maintenance_repairs)
account_transport_expenses    = Chart::Account.create(lang_key: 'transport_expenses',  a_account_num: '6200', account_sub_group: as_sub_transport_expenses)
account_insurance_expenses    = Chart::Account.create(lang_key: 'insurance_expenses',  a_account_num: '6300', account_sub_group: as_sub_insurance_expenses)
account_energy_waste_exp      = Chart::Account.create(lang_key: 'energy_waste',        a_account_num: '6400', account_sub_group: as_sub_energy_waste_exp)
account_office_admin_expenses = Chart::Account.create(lang_key: 'office_admin_expenses', a_account_num: '6500', account_sub_group: as_sub_office_admin_expenses)
account_advertising_expenses  = Chart::Account.create(lang_key: 'advertising_expenses', a_account_num: '6600', account_sub_group: as_sub_advertising_expenses)
account_other_operations      = Chart::Account.create(lang_key: 'other_operations',    a_account_num: '6700', account_sub_group: as_sub_other_operations)
account_depreciation          = Chart::Account.create(lang_key: 'depreciation',        a_account_num: '6800', account_sub_group: as_sub_depreciation)
account_interest_income       = Chart::Account.create(lang_key: 'interest_charged',    a_account_num: '6900', account_sub_group: as_sub_interest_income)
#
account_secondary_expenses    = Chart::Account.create(lang_key: 'secondary_expenses',  a_account_num: '7000', account_sub_group: as_sub_secondary_expenses)
account_secondary_expenses    = Chart::Account.create(lang_key: 'secondary_revenues',  a_account_num: '7200', account_sub_group: as_sub_secondary_expenses)
account_real_estate_expenses  = Chart::Account.create(lang_key: 'real_estate_expenses', a_account_num: '7400', account_sub_group: as_sub_real_estate_expenses)
account_real_estate_revenues  = Chart::Account.create(lang_key: 'real_estate_revenues', a_account_num: '7600', account_sub_group: as_sub_real_estate_revenues)
#
account_unexpected_expenses   = Chart::Account.create(lang_key: 'unexpected_expenses', a_account_num: '8000', account_sub_group: as_sub_unexpected_expenses)
account_unexpected_revenues   = Chart::Account.create(lang_key: 'unexpected_revenues', a_account_num: '8200', account_sub_group: as_sub_unexpected_revenues)
account_one_time_expenses     = Chart::Account.create(lang_key: 'one_time_expenses',   a_account_num: '8400', account_sub_group: as_sub_one_time_expenses)
account_one_time_revenues     = Chart::Account.create(lang_key: 'one_time_revenues',   a_account_num: '8600', account_sub_group: as_sub_one_time_revenues)
