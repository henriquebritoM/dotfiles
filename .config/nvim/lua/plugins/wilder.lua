local wilder = require("wilder")

wilder.setup({
	modes = { ":", "g", "/" },
})

wilder.set_option("pipeline", {
	wilder.branch(wilder.cmdline_pipeline(), wilder.search_pipeline()),
})

wilder.set_option(
	"renderer",
	wilder.wildmenu_renderer({
		highlighter = wilder.basic_highlighter(),
	})
)

-- If the '/' search does not work out of the box, try
-- :UpdateRemotePlugin
