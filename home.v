module main

import veb
import utils

pub fn (app &App) index(mut ctx main.Context) veb.Result {
	raw_name := ctx.query['name'] or { '' }

	name := utils.esc(raw_name)
	_ = name

	html := $tmpl('templates/index.html')
	return ctx.html(html)
}
