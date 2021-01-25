# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: 'admin@admin',
    password: 'testtest'
)
Customer.create!(
    [
        {
            email: '123@456',
            password: '123456',
            first_name: "難波",
            last_name: "太郎",
            kana_first_name: "なんば",
            kana_last_name: "たろう",
            postal_code: "5240076",
            address: "大阪府大阪市中央区難波4丁目7-14難波フロントビル４階",
            telephone_number:"0678785677"
        },
        {
            email: '654@321',
            password: '654321',
            first_name: "難波",
            last_name: "花子",
            kana_first_name: "なんば",
            kana_last_name: "はなこ",
            postal_code: "5420076",
            address: "大阪府大阪市中央区難波４丁目４−４ 難波御堂筋センタービル 8F",
            telephone_number:"0678785677"
        },
        {
            email: '111@111',
            password: '111111',
            first_name: "新宿",
            last_name: "健太",
            kana_first_name: "しんじゅく",
            kana_last_name: "けんた",
            postal_code: "1600022",
            address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階",
            telephone_number:"03-6869-4700"
        },
        {
            email: '222@222',
            password: '222222',
            first_name: "渋谷",
            last_name: "校",
            kana_first_name: "しぶや",
            kana_last_name: "こう",
            postal_code: "150-0041",
            address: "東京都渋谷区神南１丁目１９−１１ パークウェースクエスクエア24階",
            telephone_number:"0368694700"
        },
        {
            email: '333@333',
            password: '333333',
            first_name: "東京",
            last_name: "シー",
            kana_first_name: "とうきょう",
            kana_last_name: "しー",
            postal_code: "279-0031",
            address: "千葉県浦安市舞浜１−１",
            telephone_number:"045-330-5211"
        }
    ]
)
Address.create!(
    [
        {
            customer_id: "1",
            postal_code: "1",
            address: "大阪府大阪市中央区難波4丁目7-14難波フロントビル４階",
            name: "難波",
        }
    ]
)
Genre.create!(
    [
        {
            name: "ケーキ"
        },
        {
            name: "焼き菓子"
        },
        {
            name: "キャンディ"
        },
        {
            name: "プリン"
        }
    ]
)
Order.create!(
    [
        {
            payment_method: "0",
            status: "入金確認",
            shipping_cost: "800",
            customer_id: "5",
            address: "千葉県浦安市舞浜１−１",
            postal_code: "279-0031",
            name: "東京シー",
            total_price: "4500"
        },
        {
            payment_method: "0",
            status: "製作中",
            shipping_cost: "800",
            customer_id: "5",
            address: "千葉県浦安市舞浜１−１",
            postal_code: "279-0031",
            name: "東京シー",
            total_price: "50000"
        },
        {
            payment_method: "0",
            status: "発送済み",
            shipping_cost: "800",
            customer_id: "5",
            address: "千葉県浦安市舞浜１−１",
            postal_code: "279-0031",
            name: "東京シー",
            total_price: "6000"
        },
        {
            payment_method: "0",
            status: "製作中",
            shipping_cost: "800",
            customer_id: "1",
            address: "大阪府大阪市中央区難波4丁目7-14難波フロントビル４階",
            postal_code: "5240076",
            name: "難波太郎",
            total_price: "120"
        },
        {
            payment_method: "0",
            status: "発送済み",
            shipping_cost: "800",
            customer_id: "4",
            address: "東京都渋谷区神南１丁目１９−１１ パークウェースクエスクエア24階",
            postal_code: "150-0041",
            name: "渋谷校",
            total_price: "500"
        }
    ]
)
