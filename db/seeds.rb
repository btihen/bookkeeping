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
