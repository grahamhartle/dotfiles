
hs.hotkey.bind({"ctrl","alt","cmd","shift"}, "s", function ()
  hs.application.launchOrFocus('Safari')
end)

hs.hotkey.bind({"ctrl","alt","cmd","shift"}, "o", function ()
  hs.application.launchOrFocus('Obsidian')
	
end)

hs.hotkey.bind({"ctrl","alt","cmd","shift"}, "l", function ()
  hs.application.launchOrFocus('Logseq')
	
end)

hs.hotkey.bind({"ctrl","alt","cmd","shift"}, "m", function ()
  hs.application.launchOrFocus('Spark Desktop')

end)

function reloadConfig(files)
  doReload = false
  for _,file in pairs(files) do
  	if file:sub(-4) == ".lua" then
    	doReload = true
    end
  end
	if doReload then
  	hs.reload()
  end
end

myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

