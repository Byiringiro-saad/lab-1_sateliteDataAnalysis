#!/bin/bash

# Extract data for Rwanda from the satelite_temperature_data.csv file
# Sort the data by temperature in descending order
# Save the extracted data in a new file called highest_temp.csv
(head -n 1 ../raw_data/satelite_temperature_data.csv; tail -n +2 ../raw_data/satelite_temperature_data.csv | sort -t',' -k2 -nr | head -n 10) > highest_temp.csv
