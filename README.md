# README

##users
|Column|Type|Options|
|nickname|string|null: false|
|labor_id|integer|null: false|
|goal|string|null:false|

##association
has_many:projects
has_many:tasks
has_many:habits


##projects
|Column|Type|Options|
|project_name|string|null: false|
|start_day|datetime|null: false|
|schedule_end_day|datetime|null: false|
|end_day|datetime|
|memo|text|null: false|
|user|references|null: false, foreign_key: true|

##association
belongs_to:user
has_many:tasks


##tasks
|Column|Type|Options|
|task_name|string|null: false|
|start_day|datetime|null: false|
|schedule_end_day|datetime|null: false|
|end_day|datetime|
|user|references|null: false, foreign_key: true|
|project|references|null: false, foreign_key: true|

##association
belongs_to:user
belongs_to:project

##habits
|Column|Type|Options|
|habit_name|string|null:false|
|user|references|null: false, foreign_key: true|

##association
belongs_to:user


