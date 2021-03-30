## Usersテーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| first_name       | string | null: false |
| family_name      | string | null: false |
| first_name_kana  | string | null: false |
| family_name_kana | string | null: false |
| birth_day        | date   | null: false |

### Association
- has_many :items
- has_many :purchases

## Itemsテーブル

| Column        | Type    | Options                        |
| ------------- | ------- | ------------------------------ |
| image         | string  | null: false                    |
| name          | string  | null: false                    |
| description   | string  | null: false                    |
| category      | string  | null: false                    |
| status        | string  | null: false                    |
| shipping_cost | string  | null: false                    |
| area          | string  | null: false                    |
| shipping_days | string  | null: false                    |
| price         | string  | null: false                    |
| user_id       | integer | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :purchases

## Destinationsテーブル

| Column        | Type    | Options                        |
| ------------- | ------- | ------------------------------ |
| post_code     | string  | null: false                    |
| prefecture    | string  | null: false                    |
| city          | string  | null: false                    |
| address       | string  | null: false                    |
| building_name | string  |                                |
| phone_number  | string  | null: false                    |
| user_id       | integer | null: false, foreign_key: true |

### Association
- belongs_to :purchases

## Purchasesテーブル

| Column   | Type    | Options                       |
| -------- | ------- | ----------------------------- |
| user_id  | integer | null:false, foreign_key: true |
| item_id  | integer | null:false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :destination