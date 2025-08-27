-- ================================================================================================
-- TITLE : Bevy Game Engine Snippets for LuaSnip
-- ABOUT : Common Bevy patterns and boilerplate code snippets
-- USAGE : Place this file in ~/.config/nvim/lua/snippets/rust.lua or add to existing rust snippets
-- ================================================================================================

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
	-- The s() function defines the snippet
	s({
		trig = "hi",
		dscr = "A simple 'Hello, world!' example",
	}, {
		t("print('Hello, world!')"),
	}),

	-- Bevy Plugin
	s(
		"plugin",
		fmt(
			[[

        pub struct {}Plugin;

        impl Plugin for {}Plugin {{
            fn build(&self, app: &mut App) {{
                app
                    {};
            }}
        }}
    ]],
			{
				i(1, "My"),
				rep(1),
				i(0, "// .add_systems(...)"),
			}
		)
	),
}
