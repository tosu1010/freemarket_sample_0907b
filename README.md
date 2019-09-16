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
| phone_number        | integer ||
| postal_code         | integer | null: false |
| address_prefecture  | string | null: false |
| address_city        | string | null: false |
| address_number      | string | null: false |
| address_building    | string ||
| profile_description | text ||

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
| user_id       | references | foreign_key: true | 

### Association
- belongs_to :user

<br>

---
## Merchandiseテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| name                    | string | null: false |
| merchandise_description | text | null: false |
| price                   | integer | null: false |
| delivery_id             | references | null: false, foreign_key: true |
| brand_id                | references | foreign_key: true |
| category_id             | references | foreign_key: true |

### Index
- add_index :name, category_id

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
- belongs_to :category


<br>

---
## Brandテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| name | string ||

### Association
- has_many :merchandises

<br>

---
## Categoryテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| name | string | null: false |

### Association
- has_many :merchandises
- has_ancestry

<br>

---
## Delivery_methodテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| name | string | null: false|
| name       | string | null: false |

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
| user_id  | references | foreign_key: true |
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
| user_id   | references | foreign_key: true |
| merchandise_id  | references | foretin_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise


<br>

---
## Evaluationテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| evaluation_type   | string | 
| user_id           | references | foreign_key: true |
| purchase_id       | references | foreign_key: true | 

### Association
- belongs_to :user
- belongs_to :purchase

<br>

---
## Purchaseテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| purchase_status     | integer    | null: false |
| user_id             | references | foreign_key: true |
| merchandise_id      | references | foreign_key: true |
| delivery_company_id | references | foreign_key: true |

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
| user_id          | references | foreign_key: true |

### Association
- belongs_to :user

<br>

---
## Exhibitテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| exhibit_status | integer | null: false |
| exhibit_size   | integer ||
| user_id        | references | foreign_key: true |
| merchandise_id | references | foreign_key: true |

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
| exhibit_id    | references | foreign_key: true |

### Association
- belongs_to :exhibit

<br>

---
## Noticeテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| whether_read | boolean | default: false |
| user_id      | references | foreign_key_ true |

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
| to_do_comment  | text | null: false |
| user_id        | references | foreign_key: true |
| exhibit_id     | references | foreign_key: true |
| purchase_id    | references | foreign_key: true |
| merchandise_id | references | foreign_key: true |

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
| name              | text | null: false |
| account_type           | integer | null: false |
| branch_code            | integer | null: false |
| account_number         | integer | null: false |
| name     | string | null: false |
| name      | string | null: false |
| personal_information_id| references | foreign_key: true |

### Association
- belongs_to :personal_information

<br>

---
## Balanceテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| deadline       | integer | null: false |
| user_id        | references | foreign_key: true |
| merchandise_id | references | foreign_key: true |

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
| name     | string ||
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
| name          | text | null: false |
| whether_usefullness | boolean | default: false |
| user_id             | references | foreign_key: true |

### Association
- belongs_to :user

<br>

---
## Dealed_commentテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| dealed_comment | text | null: false |
| user_id        | references | foreign_key: true |
| merchandise_id | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise

