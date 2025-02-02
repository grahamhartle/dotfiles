local super = {"cmd", "alt", "ctrl", "shift"}

hs.hotkey.bind( super, 'h', function()
  hs.notify.new({title = "Hammerspoon", informativeText = "Hello, world!"}):send()
end)

hs.loadSpoon("WindowScreenLeftAndRight")
spoon.WindowScreenLeftAndRight:bindHotkeys(spoon.WindowScreenLeftAndRight.defaultHotkeys)

hs.hotkey.bind( super, 'r', function ()
  hs.reload()
end)

hs.alert.show("Config reloaded")

