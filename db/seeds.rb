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


#Venues.create(prefecture_id: 1, name: "", station: "", is_active: true)

Venue.create(prefecture_id: 1, name: "TSUTAYA O-EAST", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "TSUTAYA O-WEST", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "TSUTAYA ", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "大和田さくらホール", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "渋谷ストリームホール", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "shibuya duo MUSIC EXCHANGE", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "渋谷チェルシーホテル", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "渋谷スパイラル", station: "渋谷", is_active: true)
Venue.create(prefecture_id: 1, name: "渋谷クアトロ", station: "渋谷", is_active: true)

Venue.create(prefecture_id: 1, name: "代官山LOOP", station: "代官山", is_active: true)
Venue.create(prefecture_id: 1, name: "UNIT代官山", station: "代官山", is_active: true)

Venue.create(prefecture_id: 1, name: "原宿ストロボカフェ", station: "原宿", is_active: true)
Venue.create(prefecture_id: 1, name: "原宿クエストホール", station: "原宿", is_active: true)

Venue.create(prefecture_id: 1, name: "原宿ASTRO HALL", station: "明治神宮前", is_active: true)
Venue.create(prefecture_id: 1, name: "ラフォーレミュージアム原宿", station: "明治神宮前", is_active: true)
Venue.create(prefecture_id: 1, name: "代々木第一体育館", station: "明治神宮前", is_active: true)
Venue.create(prefecture_id: 1, name: "ベルエッポック美容専門学校", station: "明治神宮前", is_active: true)

Venue.create(prefecture_id: 1, name: "サントリーホール", station: "恵比寿", is_active: true)
Venue.create(prefecture_id: 1, name: "LIQUID ROOM", station: "恵比寿", is_active: true)
Venue.create(prefecture_id: 1, name: "ザ・ガーデンルーム", station: "恵比寿", is_active: true)

Venues.create(prefecture_id: 1, name: "東京国際フォーラム", station: "有楽町", is_active: true)
Venues.create(prefecture_id: 1, name: "よみうりホール", station: "有楽町", is_active: true)
Venues.create(prefecture_id: 1, name: "ヒューリックホール東京", station: "有楽町", is_active: true)

Venue.create(prefecture_id: 1, name: "新宿ReNY", station: "新宿・西新宿・都庁前", is_active: true)


Venues.create(prefecture_id: 1, name: "東京ビッグサイト", station: "国際展示場・東京ビッグサイト", is_active: true)

Venues.create(prefecture_id: 1, name: "オリンパスホール八王子", station: "八王子", is_active: true)

Venues.create(prefecture_id: 3, name: "幕張メッセ", station: "海浜幕張", is_active: true)

Venues.create(prefecture_id: 3, name: "", station: "海浜幕張", is_active: true)
Venues.create(prefecture_id: 3, name: "", station: "海浜幕張", is_active: true)