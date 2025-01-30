return {
	"theprimeagen/harpoon",
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		local wk = require("which-key")
		wk.register({
			h = {
				name = "Harpoon",
				a = { mark.add_file, "Harpoon add file" },
				e = { ui.toggle_quick_menu, "Harpoon quick menu" },
				["1"] = { function() ui.nav_file(1) end, "Harpoon 1" },
				["2"] = { function() ui.nav_file(2) end, "Harpoon 2" },
				["3"] = { function() ui.nav_file(3) end, "Harpoon 3" },
				["4"] = { function() ui.nav_file(4) end, "Harpoon 4" },
				["5"] = { function() ui.nav_file(5) end, "Harpoon 5" },
				["6"] = { function() ui.nav_file(6) end, "Harpoon 6" },
				mode = { 'n' },
			},
			["1"] = { function() ui.nav_file(1) end, "Harpoon 1" },
			["2"] = { function() ui.nav_file(2) end, "Harpoon 2" },
			["3"] = { function() ui.nav_file(3) end, "Harpoon 3" },
			["4"] = { function() ui.nav_file(4) end, "Harpoon 4" },
			["5"] = { function() ui.nav_file(5) end, "Harpoon 5" },
			["6"] = { function() ui.nav_file(6) end, "Harpoon 6" },
			mode = { 'n' },
			}, { prefix = "<leader>" })
	end
}
