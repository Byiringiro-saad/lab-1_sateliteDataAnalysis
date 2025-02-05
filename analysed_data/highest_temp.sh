#!/bin/bash
(head -n 1 ../raw_data/satelite_temperature_data.csv; tail -n +2 ../raw_data/satelite_temperature_data.csv | sort -t',' -k2 -nr | head -n 10) > highest_temp.csv
