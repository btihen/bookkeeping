# Assets
as_sub_liquid_assets      = Chart::AccountSubGroup.create(lang_key: 'liquid_assets',      a_sub_num: '100', account_group: ag_short_term_assets)
as_sub_recievables        = Chart::AccountSubGroup.create(lang_key: 'recievables',        a_sub_num: '110', account_group: ag_short_term_assets)
as_sub_inventory_assets   = Chart::AccountSubGroup.create(lang_key: 'inventory',          a_sub_num: '120', account_group: ag_short_term_assets)
#
as_sub_long_term_finances = Chart::AccountSubGroup.create(lang_key: 'long_term_finances', a_sub_num: '140', account_group: ag_long_term_assets)
as_sub_tangable_assets    = Chart::AccountSubGroup.create(lang_key: 'tangable_assets',    a_sub_num: '150', account_group: ag_long_term_assets)
as_sub_real_estate        = Chart::AccountSubGroup.create(lang_key: 'real_estate',        a_sub_num: '160', account_group: ag_long_term_assets)
as_sub_intangable_assets  = Chart::AccountSubGroup.create(lang_key: 'intangable_assets',  a_sub_num: '170', account_group: ag_long_term_assets)
#####
as_sub_short_fiscal_debts = Chart::AccountSubGroup.create(lang_key: 'short_term_fiscal_debts', a_sub_num: '210', account_group: ag_short_claims)
as_sub_other_short_debts  = Chart::AccountSubGroup.create(lang_key: 'other_short_term_debts',  a_sub_num: '220', account_group: ag_short_claims)
as_sub_accounts_payable   = Chart::AccountSubGroup.create(lang_key: 'accounts_payable',        a_sub_num: '200', account_group: ag_short_claims)
#
as_sub_long_fiscal_debts  = Chart::AccountSubGroup.create(lang_key: 'long_term_fiscal_debts', a_sub_num: '240', account_group: ag_long_claims)
as_sub_other_long_debts   = Chart::AccountSubGroup.create(lang_key: 'other_short_term_debts', a_sub_num: '250', account_group: ag_long_claims)
as_sub_other_long_claims  = Chart::AccountSubGroup.create(lang_key: 'other_long_claims',      a_sub_num: '260', account_group: ag_long_claims)
#
as_sub_capital_equity     = Chart::AccountSubGroup.create(lang_key: 'sub_capital_equity',     a_sub_num: '280', account_group: ag_equity_capital)
#####
as_sub_product_revenue    = Chart::AccountSubGroup.create(lang_key: 'product_revenue',   a_sub_num: '300', account_group: ag_product_revenue)
as_sub_inventory_revenue  = Chart::AccountSubGroup.create(lang_key: 'inventory_revenue', a_sub_num: '320', account_group: ag_inventory_revenue)
as_sub_service_revenue    = Chart::AccountSubGroup.create(lang_key: 'service_revenue',   a_sub_num: '340', account_group: ag_service_revenue)
as_sub_other_revenue      = Chart::AccountSubGroup.create(lang_key: 'other_revenue',     a_sub_num: '360', account_group: ag_other_revenue)
as_sub_lost_revenue       = Chart::AccountSubGroup.create(lang_key: 'lost_revenue',      a_sub_num: '380', account_group: ag_lost_revenue)
#####
as_sub_material_expense   = Chart::AccountSubGroup.create(lang_key: 'material_expense',  a_sub_num: '400', account_group: ag_material_expense)
as_sub_inventory_expense  = Chart::AccountSubGroup.create(lang_key: 'inventory_expense', a_sub_num: '420', account_group: ag_inventory_expense)
#
as_sub_personnel_wages       = Chart::AccountSubGroup.create(lang_key: 'personnel_wages',  a_sub_num: '500', account_group: ag_personnel_wages)
as_sub_social_system         = Chart::AccountSubGroup.create(lang_key: 'social_system',    a_sub_num: '570', account_group: ag_social_system)
as_sub_personnel_other       = Chart::AccountSubGroup.create(lang_key: 'personnel_other',  a_sub_num: '580', account_group: ag_personnel_other)
#
as_sub_rental_expenses       = Chart::AccountSubGroup.create(lang_key: 'rental_expenses',     a_sub_num: '600', account_group: ag_rental_expenses)
as_sub_maintenance_repairs   = Chart::AccountSubGroup.create(lang_key: 'maintenance_repairs', a_sub_num: '610', account_group: ag_maintenance_repairs)
as_sub_transport_expenses    = Chart::AccountSubGroup.create(lang_key: 'transport_expenses',  a_sub_num: '620', account_group: ag_transport_expenses)
as_sub_insurance_expenses    = Chart::AccountSubGroup.create(lang_key: 'insurance_expenses',  a_sub_num: '630', account_group: ag_insurance_expenses)
as_sub_energy_waste_exp      = Chart::AccountSubGroup.create(lang_key: 'energy_waste',        a_sub_num: '640', account_group: ag_energy_waste_exp)
as_sub_office_admin_expenses = Chart::AccountSubGroup.create(lang_key: 'office_admin_expenses', a_sub_num: '650', account_group: ag_office_admin_expenses)
as_sub_advertising_expenses  = Chart::AccountSubGroup.create(lang_key: 'advertising_expenses', a_sub_num: '660', account_group: ag_advertising_expenses)
as_sub_other_operations      = Chart::AccountSubGroup.create(lang_key: 'other_operations',    a_sub_num: '670', account_group: ag_other_operations)
as_sub_depreciation          = Chart::AccountSubGroup.create(lang_key: 'depreciation',        a_sub_num: '680', account_group: ag_depreciation)
as_sub_interest_income       = Chart::AccountSubGroup.create(lang_key: 'interest_charged',    a_sub_num: '690', account_group: ag_interest_income)
#
as_sub_secondary_expenses    = Chart::AccountSubGroup.create(lang_key: 'secondary_expenses',  a_sub_num: '700', account_group: ag_secondary_expenses)
as_sub_secondary_revenues    = Chart::AccountSubGroup.create(lang_key: 'secondary_revenues',  a_sub_num: '720', account_group: ag_secondary_revenues)
as_sub_real_estate_expenses  = Chart::AccountSubGroup.create(lang_key: 'real_estate_expenses', a_sub_num: '740', account_group: ag_real_estate_expenses)
as_sub_real_estate_revenues  = Chart::AccountSubGroup.create(lang_key: 'real_estate_revenues', a_sub_num: '760', account_group: ag_real_estate_revenues)
#
as_sub_unexpected_expenses   = Chart::AccountSubGroup.create(lang_key: 'unexpected_expenses', a_sub_num: '800', account_group: ag_unexpected_expenses)
as_sub_unexpected_revenues   = Chart::AccountSubGroup.create(lang_key: 'unexpected_revenues', a_sub_num: '820', account_group: ag_unexpected_revenues)
as_sub_one_time_expenses     = Chart::AccountSubGroup.create(lang_key: 'one_time_expenses',   a_sub_num: '840', account_group: ag_one_time_expenses)
as_sub_one_time_revenues     = Chart::AccountSubGroup.create(lang_key: 'one_time_revenues',   a_sub_num: '860', account_group: ag_one_time_revenues)
