# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

#   Mayor.create(name: 'Emanuel', city: cities.first)

Quote.create([{
  quoteText: 'It is easy to be brave from a safe distance.',
  author: 'Aesop',
  user_id: 2 },
  { quoteText: 'The boundaries of culture and rainfall never follow survey lines.',
    author: 'J. Frank Dobie',
  user_id: 3
    }])
