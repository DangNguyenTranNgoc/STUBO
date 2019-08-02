#!/usr/bin/env python
# -*- coding: utf-8 -*-
import csv
import random
import numpy as np

f = open('data.sql', 'w', encoding='utf8')
with open('bookdetail.csv', encoding="utf8") as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=';')
    line_count = 0
    for row in csv_reader:
        '''
        if line_count == 0:
            f.write(f'INSERT INTO `stubo_book` (`book_id`, `book_author`, `book_category`, `book_nxb`, `book_name`, `book_introduce`, `book_size`, `book_date_submitted`, `book_cover_image`, `book_status`, `book_date_publish`, `book_mass`, `book_format`, `book_page_number`, `book_chapter`, `book_language`, `book_price`, `book_list_image`, `book_rate`, `book_total_rate`, `book_normal_price`, `book_rent_price`, `book_link`, `book_date_create`, `book_date_modified`) VALUES')
            line_count += 1
        else:
            f.write('(')
            for col in row:
                f.write(col)
                f.write(',')
            
            f.write(')\n')
            #print(f'\t{row[0]}|{row[1]}|{row[2]}|{row[3]}|{row[4]}|{row[0]}|{row[1]}|{row[2]}|{row[3]}|{row[4]}|')
            line_count += 1
        '''
        for col in row:


f.close()