# Calculation Categories[:plus]
assets      = Books::Category.create(category_key: "assets")
liabilities = Books::Category.create(category_key: "liabilities")
expenses    = Books::Category.create(category_key: "expenses")
revenues    = Books::Category.create(category_key: "revenues")

# Account Sheets
balance_sheet  = Books::Sheet.create(sheet_key: "balance_sheet",  plus_effect: assets,   minus_effect: liabilities)
profits_losses = Books::Sheet.create(sheet_key: "profits_losses", plus_effect: revenues, minus_effect: expenses)

# Calculations SubCategory Groupings
liquid             = Books::SubCategory.create(sub_category_key: "liquid_assets",      books_category: assets)
fixed              = Books::SubCategory.create(sub_category_key: "fixed_assets",       books_category: assets)
short_debt         = Books::SubCategory.create(sub_category_key: "short_debt",         books_category: liabilities)
long_debt          = Books::SubCategory.create(sub_category_key: "long_debt",          books_category: liabilities)
equity             = Books::SubCategory.create(sub_category_key: "equity",             books_category: liabilities)
core_expenses      = Books::SubCategory.create(sub_category_key: "core_expenses",      books_category: expenses)
core_revenues      = Books::SubCategory.create(sub_category_key: "core_revenues",      books_category: revenues)
operating_expenses = Books::SubCategory.create(sub_category_key: "operating_expenses", books_category: expenses)
operating_revenues = Books::SubCategory.create(sub_category_key: "operating_revenues", books_category: revenues)
secondary_expenses = Books::SubCategory.create(sub_category_key: "secondary_expenses", books_category: expenses)
secondary_revenues = Books::SubCategory.create(sub_category_key: "secondary_revenues", books_category: revenues)
