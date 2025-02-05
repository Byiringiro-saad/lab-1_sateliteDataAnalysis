#!/bin/bash

# (head -n 1 ../raw_data/satelite_temperature_data.csv; grep "Rwanda" ../raw_da"/satelite_temperature_data.csv | sort -t',' -k3 -nr) > "humidity_data_rwanda.csv"

(head -n 1 ../raw_data/satelite_temperature_data.csv; grep "Rwanda" ../raw_data/satelite_temperature_data.csv |
 sort -t',' $(head -n 1 ../raw_data/satelite_temperature_data.csv | tr ',' '\n' | grep -n "Humidity" | cut -d':' -f1 |
 sed 's/^/-k/') -nr) > humidity_data_Rwanda.csv