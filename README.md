# ETL Pipeline Project Using Snowflake, dbt, and Airflow

## Introduction

This project demonstrates an ETL pipeline using Snowflake, dbt, and Apache Airflow to process mock data.

## Technologies Used

- **Snowflake**: Cloud-based data warehousing.
- **dbt**: Data transformation.
- **Airflow**: Workflow orchestration.

## Architecture

1. **Extract**: Pull mock data into Snowflake.
2. **Transform**: Use dbt to clean and process data.
3. **Load**: Store the transformed data back into Snowflake.

## Setup Instructions

Setup instructions go here whenever I get to finishing them!


## Data Pipeline Overview

The data pipeline involves several key tables, including both staging and transformed tables:

### Staging Tables

`stg_tpch_line_items`: This table stages raw line item data from the TPCH dataset.

`stg_tpch_orders`: This table stages raw order data from the TPCH dataset.


### Intermediate and Fact Tables

`int_order_items`: An intermediate table that aggregates detailed line item data, providing a summarized view of order items.

`int_order_items_summary`: An intermediate table that further summarizes order items, typically used for generating reports and insights.

`fct_orders`: The fact table that integrates order data, providing a comprehensive view of all orders, which is essential for business analytics and decision-making.


## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License.
