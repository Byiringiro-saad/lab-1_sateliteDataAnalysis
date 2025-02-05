#!/bin/bash

# Extract data for Rwanda from the satelite_temperature_data.csv file
# Sort the data by humidity in descending order
# Save the extracted data in a new file called humidity_data_Rwanda.csv
(head -n 1 ../raw_data/satelite_temperature_data.csv; grep "Rwanda" ../raw_data/satelite_temperature_data.csv |
 sort -t',' $(head -n 1 ../raw_data/satelite_temperature_data.csv | tr ',' '\n' | grep -n "Humidity" | cut -d':' -f1 |
 sed 's/^/-k/') -nr) > humidity_data_Rwanda.csv