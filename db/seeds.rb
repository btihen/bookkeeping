# Calculation Categories[:plus]
assets   = Sheets::StatementKlass.create(lang_key: "assets")
claims   = Sheets::StatementKlass.create(lang_key: "claims")
expenses = Sheets::StatementKlass.create(lang_key: "expenses")
revenues = Sheets::StatementKlass.create(lang_key: "revenues")

# Account Sheets
balance_statement = Sheets::Statement.create(lang_key: "balance_statement", increase_klass: assets,   decrease_klass: claims)
income_statement  = Sheets::Statement.create(lang_key: "income_statement",  increase_klass: revenues, decrease_klass: expenses)

# Calculations SubCategory Groupings
liquidity_balance  = Sheets::SubStatement.create(lang_key: "liquidity_balance",  statement: balance_statement)
operations_balance = Sheets::SubStatement.create(lang_key: "operations_balance", statement: balance_statement)
long_term_balance  = Sheets::SubStatement.create(lang_key: "long_term_balance",  statement: balance_statement)
equity_balance     = Sheets::SubStatement.create(lang_key: "equity_balance",     statement: balance_statement)
gross_core_income  = Sheets::SubStatement.create(lang_key: "gross_core_income",  statement: income_statement)
operations_income  = Sheets::SubStatement.create(lang_key: "operations_income",  statement: income_statement)
enterprise_income  = Sheets::SubStatement.create(lang_key: "enterprise_income",  statement: income_statement)
