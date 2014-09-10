rails g scaffold user first_name:string{100} last_name:string{100} email:string{100} created_by:integer:index updated_by:integer:index
rails g scaffold group name:string{200} description:text visible:boolean leavable:boolean member_list:boolean group_type:references owner_user_id:integer:index app_sponsor_id:integer:index created_by:integer:index updated_by:integer:index

rails g scaffold group_type name:string{50} description:string{100} created_by:integer:index updated_by:integer:index

rails g scaffold group_member user:references group:references created_by:integer:index updated_by:integer:index

rails g scaffold group_request user:references group:references pre_auth:boolean approved:boolean created_by:integer:index updated_by:integer:index
