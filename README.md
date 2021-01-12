# README

# README

# テーブル設計

## users テーブル

| Column                  | Type    | Options     |
| ----------------------- | ------- | ----------- |
| name                    | string  | null: false |
| email                   | string  | null: false |
| encrypted_password      | string  | null: false |

### Association

- has_many :texts
- has_many :charts
- has_many :events
- has_one :profile

## profiles テーブル

| Column         | Type        | Options                        |
| -------------- | ----------- | ------------------------------ |
| setting        | string      | null: false                    |
| user           | references  | null: false, foreign_key: true |

### Association

- belongs_to :user

## texts テーブル

| Column                | Type       | Options                        |
| ----------------------| ---------- | -------------------------------|
| title                 | string     | null: false                    |
| text                  | text       | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :text_tag_relations
- has_many :tags, through: :text_tag_relations

## tags テーブル

| Column                | Type       | Options                        |
| ----------------------| ---------- | -------------------------------|
| name                  | string     | null: false                    |

- has_many :text_tag_relations
- has_many :texts, through: :text_tag_relations

## text_tag_relations テーブル
| text                  | references | null: false, foreign_key: true |
| tag                   | references | null: false, foreign_key: true |

- belongs_to :text
- belongs_to :tag

## charts テーブル

| Column              | Type       | Options                        |
| --------------------| ---------- | -------------------------------|
| title               | string     | null: false                    |
| practice            | integer    | null: false                    |
| act                 | integer    | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association

- belongs_to  :user

## events テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| body        | text       | null: false                    |
| start       | datetime   | null: false                    |
| end         | datetime   | null: false                    |
| allday      | boolean    | null: false                    |
| user        | references | null: false, foreign_key: true |


### Association

- belongs_to :user