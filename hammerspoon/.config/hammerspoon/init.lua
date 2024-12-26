local super = {"cmd", "alt", "ctrl", "shift"}

hs.hotkey.bind( super, 'h', function()
  hs.notify.new({title = "Hammerspoon", informativeText = "Hello, world!"}):send()
end)

hs.hotkey.bind( super, 'r', function ()
  hs.reload()
end)

hs.alert.show("Config reloaded")

