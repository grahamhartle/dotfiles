local super = {"cmd", "alt", "ctrl", "shift"}

hs.hotkey.bind( super, 'h', function()
  hs.notify.new({title = "Hammerspoon", informativeText = "Hello, world!"}):send()
end)

