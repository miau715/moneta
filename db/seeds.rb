# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.create(:name => "現金", :money => 0)

Category.create(:name => "伙食費", :exchange_type => "outcome")
Category.create(:name => "交通費", :exchange_type => "outcome")
Category.create(:name => "薪水", :exchange_type => "income")