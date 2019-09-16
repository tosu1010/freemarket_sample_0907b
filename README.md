# README

## Userテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| first_name_kanji    | string | null: false |
| last_name_kanji     | string | null: false |
| first_name_kana     | string | null: false |
| last_name_kana      | string | null: false |
| nickname            | string | null: false |
| email               | string | null: false, unique: true |
| password            | string | null: false |
| birth_year          | integer | null: false |
| birth_month         | integer | null: false |
| birth_day           | integer | null: false |
| phone_number        | integer | null: false |
| postal_code         | integer | null: false |
| address_prefecture  | string | null: false |
| address_city        | string | null: false |
| address_number      | string | null: false |
| address_building    | string ||
| profile_description | string ||

### Association
- has_one :personal_information
- has_one :guide
- has_one :credit_card
- has_one :dealed_comment
- has_many :points
- has_many :notices
- has_many :to_does
- has_many :balances
- has_many :likes
- has_many :exhibits
- has_many :contacts
- has_many :comments
- has_many :purchases
- has_many :evaluations


<br>

---
## Personal_informationテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| p_postal_code        | integer ||
| p_address_prefecture | string ||
| p_address_city       | string ||
| p_address_number     | string ||
| p_address_building   | string ||
| p_identification     | string ||
| user_id              | references | foreign_key: true|

### Association
- belongs_to :user
- has_one :remittee

<br>

---
## Credit_cardテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| card_number   | integer | null: false |
| limit_month   | integer | null: false |
| limit_year    | integer | null: false |
| security_code | integer | null: false |
| user_id       | references | null: false, foreign_key: true | 

### Association
- belongs_to :user

<br>

---
## merchandiseテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| merchandise_name        | string | null: false |
| merchandise_description | text | null: false |
| price                  | integer | null: false |
| delivery_id            | references | null: false, foreign_key: true |
| brand_id               | references | null: false, foreign_key: true |
| category_1_id          | references | null: false, foreign_key: true |
| category_2_id          | references | null: false, foreign_key: true |
| category_3_id          | references | null: false, foreign_key: true |
| category_4_id          | references | null: false, foreign_key: true |

### Index
- add_index :merchandise_name, category_1_id, category_2_id, category_3_id, category_4_id

### Association
- has_one :balance
- has_one :exhibit
- has_one :purchases
- has_many :to_does
- has_many :likes
- has_many :contacts
- has_many :comments
- has_many :dealed_comment

- belongs_to :delivery
- belongs_to :brand
- belongs_to :category_1
- belongs_to :category_2
- belongs_to :category_3
- belongs_to :category_4


<br>

---
## Brandテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| brand_name | string ||

### Association
- has_many :merchandises

<br>

---
## Category_1テーブル
|カラム名|タイプ|オプション|
|--|--|--|
| category_1_name | string | null: false |

### Association
- has_many :merchandises
- has_many :category_2s

<br>

---
## Category_2テーブル
|カラム名|タイプ|オプション|
|--|--|--|
| category_2_name | string | null: false |
| category_1_id   | refernces | foreign_key: true |

### Association
- has_many :merchandises
- has_many :category_3s

- belongs_to :category_1

<br>

---
## Category_3テーブル
|カラム名|タイプ|オプション|
|--|--|--|
| category_3_name | string | null: false |
| category_2_id | references | foreign_key: true |

### Association
- has_many :merchandises
- has_many :category_4

- belongs_to :category_2

<br>

---
## Category_4テーブル
|カラム名|タイプ|オプション|
|--|--|--|
| category_4_name | string | null: false |
| category_3_id   | references | foreign_key: true |

### Association
- has_many :merchandises

- belongs_to :category_3

<br>

---
## Delivery_methodテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| delivery_type_name | string | null: false|
| company_name       | string | null: false |

### Association
- has_one :delivery

<br>

---
## Deliveryテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| shipping_charge     | integer | null: false |
| shipping_area       | string | null: false |
| shipping_date       | string | null: false |

### Association

<br>

---
## Likesテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| value    | integer | null: false |
| user_id  | references | null: false, foreign_key: true |
| merchandise_id | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise

<br>

---
## Commentテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| comment   | text | null: false |
| user_id   | references | null: false ,foreign_key: true |
| merchandise_id  | references | null: false, foretin_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise


<br>

---
## Evaluationテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| evaluation_type   | string | 
| user_id           | references | null: false, foreign_key: true |
| purchase_id       | references | null: false, foreign_key: true | 

### Association
- belongs_to :user
- belongs_to :purchase

<br>

---
## Purchaseテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| purchase_status     | integer    | null: false |
| user_id             | references | null: false, foreign_key: true |
| merchandise_id       | references | null: false, foreign_key: true |
| delivery_company_id | references | null: false, foreign_key: true |

### Association
- has_one :evaluation
- has_many :to_does

- belongs_to :merchandise
- belongs_to :delivery_company

<br>

---
## Pointテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| points           | integer ||
| expiration_date  | integer | null: false |
| user_id          | references | null: false, foreign_key: true |

### Association
- belongs_to :user

<br>

---
## Exhibitテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| exhibit_status | integer | null: false |
| exhibit_size   | integer | null: false |
| user_id        | references | null: false, foreign_key: true |
| merchandise_id       | references | null: false, foreign_key: true |

### Association
- has_many :to_does
- has_many :exhibit_images

- belongs_to :user
- belongs_to :merchandise

<br>

---
## Exhibit_imageテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| exhibit_image | text | null: false |
| exhibit_id    | references | null: false, foreign_key: true |

### Association
- belongs_to :exhibit

<br>

---
## Noticeテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| whether_read | boolean | null: false, default: false |
| user_id      | references | null: false, foreign_key_ true |

### Association
- belongs_to :user

<br>

---
## Newsテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| news_content | text | null: false |

<br>

---
## To_doテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| to_do_comment  | text | null: false, 
| user_id        | references | null: false, foreign_key: true |
| exhibit_id     | references | null: false, foreign_key: true |
| purchase_id    | references | null: false, foreign_key: true |
| merchandise_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :exhibit
- belongs_to :purchase
- belongs_to :merchandise

<br>

---
## remitteeテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| bank_name              | text | null: false |
| account_type           | integer | null: false |
| branch_code            | integer | null: false |
| account_number         | integer | null: false |
| account_first_name     | string | null: false |
| account_last_name      | string | null: false |
| personal_information_id| references | null: false, foreign_key: true |

### Association
- belongs_to :personal_information

<br>

---
## Balanceテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| deadline | integer | null: false |
| user_id  | references | null: false, foreign_key: true |
| merchandise_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise


<br>

---
## Contactテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| contact_content      | text | null: false |
| buy_or_sell          | integer ||
| occurrence_year      | integer ||
| occurrence_month     | integer ||
| occurrence_day       | integer ||
| occurrence_time      | integer ||
| occurrence_minute    | integer ||
| occurrence_friquence | integer ||
| bug_detail           | text ||
| merchandise_name     | string ||
| bug_display_comment  | text ||
| merchandise_id       | references | foreign_key: true |
| user_id              | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise

<br>

---
## Guideテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| guide_name          | text | null: false |
| whether_usefullness | integer ||
| user_id             | references | foreign_key: true |

### Association
- belongs_to :user

<br>

---
## Dealed_commentテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| dealed_comment | text | null: false |
| user_id        | references | null: false, foreign_key: true |
| merchandise_id       | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise

