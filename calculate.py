import PortfolioOptimizer as PortOpt

# Function to calculate portfolio 
def Calculate_portfolio(tickers):
	min_risk, max_return = PortOpt.optimize(tickers)
	return min_risk, max_return