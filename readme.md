# Introduction
#### A simple tool for paper analysis based on Ruby on Rails, the admin could create survey which **has_many** questions which **has_many** answers, and normal user could analyze the papers using the survey both of which are created by the admin, and the amdin could also download the results of the analysis conducted by the users in xls form.
# Installation
**Ruby on Rails version requirements:**
* Ruby version 2.1.9
* Rails version 4.2.6
1. cloning the code from GitHub(https://github.com/Vic-Song/patool):
'''
git clone https://github.com/Vic-Song/patool
'''
2. installing all the gems needed to run the application:
'''
bundle install
'''
3. handling the database migration:
'''
rake db:migrate
'''
# Q&A
