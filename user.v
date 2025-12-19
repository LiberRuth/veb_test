module main

import veb

pub struct User {
	name string
	age  int
}

pub struct PageData {
	title string
	users []User
}


@['/users']
pub fn (app &App) users(mut ctx main.Context) veb.Result {

	mut users := []User{}
	names := ['철수', '영희', '민수', '지훈', '수진', 'dd']
	ages := [25, 30, 28, 35, 22, 19]

	for i in 0 .. names.len {
		users << User{names[i], ages[i]}
	}

	title := '테스트'

	data := PageData{
		users: users
	}

	html := $tmpl('templates/users.html')
	return ctx.html(html)
}

