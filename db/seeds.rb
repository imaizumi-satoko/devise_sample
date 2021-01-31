user = User.first
Item.create!(name: "熱狂のWebマーケティング", price: 1500, user_id: user.id)
Item.create!(name: "0秒シンキング", price: 1200, user_id: user.id)
Item.create!(name: "死ぬこと以外、けっこう平気。", price: 1300, user_id: user.id)
puts "初期データの投入に成功しました！"