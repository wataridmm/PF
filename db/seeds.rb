# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Prefecture.create(name: '東京', slug: 'tokyo')
Prefecture.create(name: '神奈川', slug: 'kanagawa')
Prefecture.create(name: '千葉', slug: 'chiba')
Prefecture.create(name: '埼玉', slug: 'saitama')
Prefecture.create(name: '栃木', slug: 'tochigi')
Prefecture.create(name: '茨城', slug: 'ibaraki')
Prefecture.create(name: '群馬', slug: 'gunma')


Venues.create(prefecture_id: 1, name: "ZeppTokyo", station: "渋谷")

