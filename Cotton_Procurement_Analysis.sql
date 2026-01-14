-- Monthly price trend (Understanding Seasonality)
SELECT 
    Year,
    Month,
    ROUND(AVG(Avg_Price), 2) AS Monthly_Avg_Cotton_Price
FROM cotton_prices
GROUP BY Year, Month
ORDER BY Year, Month;

-- State-wise price comparison (Thinking at regional strategy level)
SELECT 
    State,
    ROUND(AVG(Avg_Price), 2) AS State_Avg_Cotton_Price
FROM cotton_prices
GROUP BY State
ORDER BY State_Avg_Cotton_Price;

-- Market-wise comparison (Granular Analysis)
SELECT 
    Market,
    ROUND(AVG(Avg_Price), 2) AS Market_Avg_Cotton_Price
FROM cotton_prices
GROUP BY Market
ORDER BY Market_Avg_Cotton_Price;

-- Variety-wise pricing (Understanding Quality Differentiation)
SELECT 
    Variety,
    ROUND(AVG(Avg_Price), 2) AS Variety_Avg_Cotton_Price
FROM cotton_prices
GROUP BY Variety
ORDER BY Variety_Avg_Cotton_Price DESC;



