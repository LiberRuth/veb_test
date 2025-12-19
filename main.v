module main

import veb

pub struct App {
pub:
	secret_key string
}

pub struct Context {
	veb.Context
}

fn main() {
	mut app := &App{
		secret_key: 'SUPER_SECRET'
	}

	veb.run[App, Context](mut app, 8080)
}
