#load the data
SELECT COUNT(*) FROM supply_chain_data;
# identify null values
SELECT * FROM supply_chain_data WHERE price IS NULL or Stock_levels <0;
# total revunue generated
select sum(Revenue_generated) as Total_Revenue from supply_chain_data;
#Best selling products
select product_type, sku, sum(Number_of_products_sold) as total_sales from supply_chain_data group by Product_type, sku order by total_sales desc limit 5;
# Average lead time by supplier
select supplier_name, avg(lead_time) as avg_lead_time from supply_chain_data group by Supplier_name order by avg_lead_time asc;
#stock levels of products running low
select product_type, stock_levels from supply_chain_data where Stock_levels <10 order by stock_levels asc;
# shipping performance analysis
select shipping_carriers, avg(shipping_times) as avg_shipping_times from supply_chain_data group by Shipping_carriers order by avg_shipping_times asc;
# customer demographics analysis
select Customer_demographics, count(customer_demographics) as customer from supply_chain_data group by Customer_demographics order by customer_demographics asc;
# shipping cost optimization by route
select routes, avg(costs) as avg_costs from supply_chain_data group by routes order by avg_costs asc;
# transportation analysis
select Transportation_modes, count(Transportation_modes) as number_of_products from supply_chain_data group by Transportation_modes;