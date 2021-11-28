# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or find_or_create_byd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.find_or_create_by(name: 'Luke', movie: movies.first)


Admin.create!(
  email: "a@a",
  password: "aaaaaa"
  )


Prefecture.find_or_create_by(name: '東京', slug: 'tokyo')
Prefecture.find_or_create_by(name: '神奈川', slug: 'kanagawa')
Prefecture.find_or_create_by(name: '千葉', slug: 'chiba')
Prefecture.find_or_create_by(name: '埼玉', slug: 'saitama')
Prefecture.find_or_create_by(name: '栃木', slug: 'tochigi')
Prefecture.find_or_create_by(name: '茨城', slug: 'ibaraki')
Prefecture.find_or_create_by(name: '群馬', slug: 'gunma')

venues = [
    {pid: 1, name: 'TSUTAYA O-EAST', station: '渋谷'},
    {pid: 1, name: 'TSUTAYA O-WEST', station: '渋谷'},
    {pid: 1, name: '大和田さくらホール', station: '渋谷'},
    {pid: 1, name: '渋谷ストリームホール', station: '渋谷'},
    {pid: 1, name: 'shibuya duo MUSIC EXCHANGE', station: '渋谷'},
    {pid: 1, name: '渋谷チェルシーホテル', station: '渋谷'},
    {pid: 1, name: '渋谷スパイラル', station: '渋谷'},
    {pid: 1, name: 'クラブクアトロ', station: '渋谷'},
    {pid: 1, name: 'シアターコクーン', station: '渋谷'},
    {pid: 1, name: 'オーチャードホール', station: '新宿・西新宿・都庁前'},

    {pid: 1, name: '代官山LOOP', station: '代官山'},
    {pid: 1, name: 'UNIT代官山', station: '代官山'},

    {pid: 1, name: '原宿ストロボカフェ', station: '原宿'},
    {pid: 1, name: '原宿クエストホール', station: '原宿'},

    {pid: 1, name: '原宿ASTRO HALL', station: '明治神宮前'},
    {pid: 1, name: 'ラフォーレミュージアム原宿', station: '明治神宮前'},
    {pid: 1, name: '代々木第一体育館', station: '明治神宮前'},
    {pid: 1, name: 'ベルエッポック美容専門学校', station: '明治神宮前'},

    {pid: 1, name: 'サントリーホール', station: '恵比寿'},
    {pid: 1, name: 'LIQUID ROOM', station: '恵比寿'},
    {pid: 1, name: 'ザ・ガーデンルーム', station: '恵比寿'},
    {pid: 1, name: 'ザ・ガーデンホール', station: '恵比寿'},


    {pid: 1, name: 'EX THEATER ROPPONGI', station: '六本木'},

    {pid: 1, name: '赤坂ACTシアター', station: '赤坂'},
    {pid: 1, name: 'マイナビBLITZ赤坂', station: '赤坂'},

    {pid: 1, name: '東京国際フォーラム', station: '有楽町'},
    {pid: 1, name: 'よみうりホール', station: '有楽町'},
    {pid: 1, name: 'ヒューリックホール東京', station: '有楽町'},

    {pid: 1, name: '新宿ReNY', station: '新宿・西新宿・都庁前'},
    {pid: 1, name: '新国立劇場', station: '新宿・西新宿・都庁前'},



    {pid: 1, name: 'Zepp Tokyo', station: '青海・東京テレポート'},
    {pid: 1, name: 'Zepp Diver City', station: '台場・東京テレポート'},
    {pid: 1, name: '東京ビッグサイト', station: '国際展示場・東京ビッグサイト'},
    {pid: 1, name: '豊洲PIT', station: '豊洲・新豊洲'},
    {pid: 1, name: '新木場スタジオコースト', station: '新木場'},
    {pid: 1, name: 'オリンパスホール八王子', station: '八王子'},
    {pid: 1, name: '幕張メッセ', station: '海浜幕張'},
    {pid: 1, name: '人見記念講堂', station: '三軒茶屋'}
]

venues.each do |data|
  Venue.find_or_create_by(
    prefecture_id: data[:pid],
    name: data[:name],
    station: data[:station],
    is_active: true
    )
end


items = [
  {name: '白ガム', comment: 'ロール単位', team: 0},
  {name: '養生', comment: 'ロール単位', team: 0},
  {name: 'セロテ', comment: 'ロール単位', team: 0},
  {name: '黒ガム', comment: 'ロール単位', team: 0},
  {name: 'Pロープ', comment: 'ロール単位', team: 0},
  {name: 'レインコート', comment: '', team: 0},
  {name: 'オリコン', comment: '', team: 0},
  {name: '文具ボックス', comment: '', team: 0},
  {name: 'ペンライト', comment: '単四電池使用', team: 0},
  {name: '延長コード3m', comment: '', team: 0},
  {name: '延長コード5m', comment: '', team: 0},
  {name: 'ゴミ袋セット', comment: '20枚単位', team: 0},
  {name: 'iXプリンター', comment: 'デフォルトでコピー用紙100枚ずつが入っています', team: 0},
  {name: 'iPプリンター', comment: 'デフォルトでコピー用紙100枚が入っています', team: 0},
  {name: '追加A3コピー用紙', comment: '', team: 0},
  {name: '追加A4コピー用紙', comment: '', team: 0},
  {name: '案内ボックス大', comment: '', team: 0},
  {name: '案内ボックス小', comment: '', team: 0},
  {name: '規ゴクセット', comment: '', team: 0},
  {name: 'ペグシル', comment: '1000本単位', team: 0},
  {name: '基本表示', comment: '', team: 0},
  {name: 'アリーナ表示', comment: '', team: 0},
  {name: 'トラメガ', comment: '単一電池使用', team: 0},
  {name: '撮影禁止看板', comment: '', team: 0},
  {name: '看板セット', comment: '', team: 0},
  {name: '手持ち看板', comment: '', team: 0},
  {name: '楽受セット', comment: '', team: 0},
  {name: '誘導灯', comment: '', team: 0},
  {name: 'カウンター', comment: '', team: 0},
  {name: 'トラロープ', comment: '20m単位', team: 0},
  {name: '釣り銭箱', comment: '', team: 0},
  {name: '物販備品', comment: '', team: 0},
  {name: 'ラミネーター', comment: '', team: 0},
  {name: 'ラミフィルム', comment: '20枚ずつ単位', team: 0},
  {name: 'プラ柵', comment: '', team: 0},
  {name: '買い物かご', comment: '', team: 0},
  {name: 'シーバー', comment: '6台ごとに充電器ひとつがつきます', team: 0},
  {name: 'シーバー追加充電器', comment: '', team: 0},
  {name: 'シーバー追加バッテリー', comment: '', team: 0},
  {name: '腕章', comment: '', team: 0},
  {name: 'ネクタイ', comment: '', team: 0},
  {name: 'ジャンパー紺白', comment: '搬入・搬出用', team: 0},
  {name: 'ジャンパー紺オレ', comment: '搬入・搬出用', team: 0},
  {name: 'ジャンパー紺緑', comment: '整理用', team: 0},
  {name: 'ジャンパー黒赤', comment: '案内用', team: 0},
  {name: 'ジャンパー黒白', comment: '物販用', team: 0},
  {name: 'ジャンパー黒グレ', comment: 'ステハン用', team: 0},
  {name: 'Tシャツ紺オレ', comment: '搬入・搬出用', team: 0},
  {name: 'Tシャツ黒グレ', comment: 'ステハン用', team: 0},
  {name: 'ベンチコート紺黄', comment: '整理・楽受用', team: 0},
  {name: 'ベンチコート黒赤', comment: '案内用', team: 0},
  {name: 'ベンチコート黒白', comment: '物販用', team: 0},
  {name: '制服ベスト赤L', comment: '案内用', team: 0},
  {name: '制服ベスト赤M', comment: '案内用', team: 0},
  {name: '制服ベスト赤S', comment: '案内用', team: 0},
  {name: '制服ベスト紺', comment: '案内チーフ用', team: 0},
  {name: '制服ベスト紺', comment: '案内チーフ用', team: 0},
  {name: '制服ベスト紺', comment: '案内チーフ用', team: 0},
  {name: '黒スカート', comment: '予備', team: 0},
  {name: 'パンプス', comment: '予備', team: 0},
  {name: '軍手', comment: '搬入・搬出用', team: 0},
  {name: 'ヘルメット白', comment: '搬入・搬出用18個以上はケース単位で用意', team: 0},
  {name: 'ヘルメット赤', comment: '搬入・搬出用18個以上はケース単位で用意', team: 0},
  {name: 'ヘルメット黄', comment: '搬入・搬出用18個以上はケース単位で用意', team: 0},
  {name: 'ヘルメット青', comment: '搬入・搬出用18個以上はケース単位で用意', team: 0},
  {name: 'ヘルメット緑', comment: '搬入・搬出用18個以上はケース単位で用意', team: 0},
  {name: '荷物袋', comment: '30枚単位', team: 0},
  {name: '荷物袋用札', comment: '100枚単位', team: 0}
  ]


items.each do |data|
  Item.find_or_create_by(
    name: data[:name],
    comment: data[:comment],
    team: data[:team],
    is_active: true
    )
end

workers = [
    {last_name: '令和', first_name: '太郎', email: 'a@a', password: 'aaaaaa'},
    {last_name: '林檎', first_name: '夏子', email: 'b@b', password: 'aaaaaa'},
    {last_name: '平成', first_name: '純也', email: 'c@c', password: 'aaaaaa'},
    {last_name: '田中', first_name: '翔平', email: 'd@d', password: 'aaaaaa'},
    {last_name: '鈴木', first_name: '桃子', email: 'e@e', password: 'aaaaaa'},
    {last_name: '梨野', first_name: '幸平', email: 'f@f', password: 'aaaaaa'},
    {last_name: '松風', first_name: '寿郎', email: 'g@g', password: 'aaaaaa'},
    {last_name: '多田', first_name: '美香', email: 'h@h', password: 'aaaaaa'},
    {last_name: '響尾', first_name: '二郎', email: 'i@i', password: 'aaaaaa'},
    {last_name: '斉藤', first_name: '元博', email: 'j@j', password: 'aaaaaa'},
    {last_name: '遠田', first_name: '花果', email: 'k@k', password: 'aaaaaa'},
    {last_name: '餅野', first_name: '月子', email: 'l@l', password: 'aaaaaa'},
    {last_name: '吉田', first_name: '三郎', email: 'm@m', password: 'aaaaaa'},
    {last_name: '高橋', first_name: '檸檬', email: 'n@n', password: 'aaaaaa'},
    {last_name: '伊藤', first_name: '柿男', email: 'o@o', password: 'aaaaaa'},
    {last_name: '渡辺', first_name: '心愛', email: 'p@p', password: 'aaaaaa'}
    ]

workers.each do |data|
  Worker.create(
    email: data[:email],
    last_name: data[:last_name],
    first_name: data[:first_name],
    password: data[:password]
    )
end
