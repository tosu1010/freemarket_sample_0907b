# README

## Userテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| first_name          | string | null: false |
| last_name           | string | null: false |
| first_name_kana     | string | null: false |
| last_name_kana      | string | null: false |
| nickname            | string | null: false |
| email               | string | null: false, unique: true |
| password            | string | null: false |
| birth_year          | integer | null: false |
| birth_month         | integer | null: false |
| birth_day           | integer | null: false |
| phone_number        | string ||
| profile_description | text ||

### Association
- has_one :personal_information, dependent: :destroy
- has_one :guide, dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_one :dealed_comment, dependent: :destroy
- has_one :address, dependent: :destroy
- has_many :points, dependent: :destroy
- has_many :notices, dependent: :destroy
- has_many :to_does, dependent: :destroy
- has_many :balances, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :exhibits, dependent: :destroy
- has_many :contacts, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :purchases, dependent: :destroy
- has_many :evaluations, dependent: :destroy

<br>

---
## Addressテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| postal_code | string | null: false |
| prefecture  | string | null: false |
| city        | string | null: false |
| number      | string | null: false |
| building    | string ||
| user_id             | references | null: false, foreign_key: true |

### Association
- belongs_to :user

<br>

---
## Personal_informationテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| postal_code | string ||
| prefecture  | string ||
| city        | string ||
| number      | string ||
| building    | string ||
| identification     | string ||
| user_id              | references | null: false, foreign_key: true |

### Association
- has_one :remittee, dependent: :destroy
- belongs_to :user

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
## Merchandiseテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| name                    | string | null: false |
| description             | text | null: false |
| price                   | integer | null: false |
| delivery_id             | references | null: false, foreign_key: true |
| brand_id                | references | null: false, foreign_key: true |
| category_id             | references | null: false, foreign_key: true |

### Index
- add_index :name, category_id

### Association
- has_one :balance, dependent: :destroy
- has_one :exhibit, dependent: :destroy
- has_one :purchases, dependent: :destroy
- has_many :to_does, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :contacts, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :dealed_comment, dependent: :destroy

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
| delivery_type_name | string | null: false|
| company_name  | string | null: false |
| delivery_id   | references | null: false, foreign_key: true |

### Association
- has_one :delivery, dependent: :destroy

<br>

---
## Deliveryテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| shipping_charge     | integer | null: false |
| shipping_area       | string | null: false |
| shipping_date       | string | null: false |

### Association
- belongs_to :delivery_method

<br>

---
## Likesテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| value    | integer | null: false |
| user_id  | references | null: false, foreign_key: true |
| merchandise_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise

<br>

---
## Commentテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| comment         | text | null: false |
| user_id         | references | null: false, foreign_key: true|
| merchandise_id  | references | null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :merchandise


<br>

---
## Evaluationテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| type              | string ||
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
| status     | integer    | null: false |
| user_id             | references | null: false, foreign_key: true |
| merchandise_id      | references | null: false, foreign_key: true |

### Association
- has_one :evaluation, dependent: :destroy
- has_many :to_does, dependent: :destroy

- belongs_to :merchandise

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
| status         | integer | null: false |
| size           | integer ||
| user_id        | references | null: false, foreign_key: true |
| merchandise_id | references | null: false, foreign_key: true |

### Association
- has_many :to_does, dependent: :destroy
- has_many :exhibit_images, dependent: :destroy

- belongs_to :user
- belongs_to :merchandise

<br>

---
## Exhibit_imageテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| image         | string | null: false |
| exhibit_id    | references | null: false, foreign_key: true |

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
| content | text | null: false |

<br>

---
## To_doテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| comment  | text | null: false |
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
| deadline       | integer | null: false |
| user_id        | references | null: false, foreign_key: true |
| merchandise_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise


<br>

---
## Contactテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| content      | text | null: false |
| buy_or_sell          | integer ||
| occurrence_year      | integer ||
| occurrence_month     | integer ||
| occurrence_day       | integer ||
| occurrence_time      | integer ||
| occurrence_minute    | integer ||
| occurrence_friquence | integer ||
| bug_detail           | text ||
| name                 | string ||
| bug_display_comment  | text ||
| merchandise_id       | references | null: false, foreign_key: true |
| user_id              | references | null: false, foreign_key: true |

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
| user_id             | references | null: false, foreign_key: true |

### Association
- belongs_to :user

<br>

---
## Dealed_commentテーブル
|カラム名|タイプ|オプション|
|--|--|--|
| comment        | text | null: false |
| user_id        | references | null: false, foreign_key: true |
| merchandise_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :merchandise

