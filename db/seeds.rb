# Calculation Categories[:plus]
assets              = Sheets::StatementKlass.create(lang_key: 'assets',   s_klass_num: "9110")
claims              = Sheets::StatementKlass.create(lang_key: 'claims',   s_klass_num: "9120")
expenses            = Sheets::StatementKlass.create(lang_key: 'expenses', s_klass_num: "9010")
revenues            = Sheets::StatementKlass.create(lang_key: 'revenues', s_klass_num: "9020")

# Account Sheets
balance_statement   = Sheets::Statement.create(lang_key: 'balance_statement', s_state_num: "9100", increase_klass: assets,   decrease_klass: claims)
income_statement    = Sheets::Statement.create(lang_key: 'income_statement',  s_state_num: "9000", increase_klass: revenues, decrease_klass: expenses)

# Calculations SubCategory Groupings
liquidity_balance   = Sheets::SubStatement.create(lang_key: 'liquidity_balance',  s_sub_num: "9101", statement: balance_statement)
operations_balance  = Sheets::SubStatement.create(lang_key: 'operations_balance', s_sub_num: "9104", statement: balance_statement)
long_term_balance   = Sheets::SubStatement.create(lang_key: 'long_term_balance',  s_sub_num: "9106", statement: balance_statement)
equity_balance      = Sheets::SubStatement.create(lang_key: 'equity_balance',     s_sub_num: "9108", statement: balance_statement)
gross_core_income   = Sheets::SubStatement.create(lang_key: 'gross_core_income',  s_sub_num: "9003", statement: income_statement)
operations_income   = Sheets::SubStatement.create(lang_key: 'operations_income',  s_sub_num: "9005", statement: income_statement)
enterprise_income   = Sheets::SubStatement.create(lang_key: 'enterprise_income',  s_sub_num: "9007", statement: income_statement)

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

# ACCOUNT SUB GROUPS
#####################
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
as_sub_capital_equity = Chart::AccountSubGroup.create(lang_key: 'sub_capital_equity',     a_sub_num: '280', account_group: ag_equity_capital)
#####
as_sub_product_revenue   = Chart::AccountSubGroup.create(lang_key: 'product_revenue',   a_sub_num: '300', account_group: ag_product_revenue)
as_sub_inventory_revenue = Chart::AccountSubGroup.create(lang_key: 'inventory_revenue', a_sub_num: '320', account_group: ag_inventory_revenue)
as_sub_service_revenue   = Chart::AccountSubGroup.create(lang_key: 'service_revenue',   a_sub_num: '340', account_group: ag_service_revenue)
as_sub_other_revenue     = Chart::AccountSubGroup.create(lang_key: 'other_revenue',     a_sub_num: '360', account_group: ag_other_revenue)
as_sub_lost_revenue      = Chart::AccountSubGroup.create(lang_key: 'lost_revenue',      a_sub_num: '380', account_group: ag_lost_revenue)
#####
as_sub_material_expense  = Chart::AccountSubGroup.create(lang_key: 'material_expense',  a_sub_num: '400', account_group: ag_material_expense)
as_sub_inventory_expense = Chart::AccountSubGroup.create(lang_key: 'inventory_expense', a_sub_num: '420', account_group: ag_inventory_expense)
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

############
# ACCOUNTS #
