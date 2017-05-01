# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

###データベース設計
####users  

|id|name|e-mail|password||
|-----|-----------|------------|---|
|主キー制約|Not Null制約|Not Null制約|Not Null制約|
|Not Null制約|一意性制約|一意性制約||
|一意性制約|index貼る|||
||||  

####groups  

|id|name|
|---|---|
|主キー制約|Not Null制約|
|Not Null制約|
|一意性制約|  

####group_user  

|user_id|group_id|
|---|---|
|外部キー制約|外部キー制約
|Not Null制約|Not Null制約|
|一意性制約|一意性制約|

####messages

|id|text|image|created_at|updated_at|user_id|  
|---|---|---|---|---|---|  
|Not Null制約|||Not Null制約|Not Null制約|Not Null制約|
|主キー制約|||||外部キー制約|  



####データベース間の関係  

#####users  
has_many : group_user  
has_many : groups , through: :group_users  
has_many : messages  

######groups  
has_many : group_user  
has_many : users ,through: :group_users  
has_many : messages

#####group_users  
belongs_to : group  
belongs_to :user  

####messages  
belongs_to : user  
belongs_to : group  






 




