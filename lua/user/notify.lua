local status_ok, notify = pcall(require, "notify")
if not status_ok then
  return
end

notify.setup {
  -- Animation style (see below for details)
  stages = "fade_in_slide_out",

  -- Function called when a new window is opened, use for changing win settings/config
  on_open = nil,

  -- Function called when a window is closed
  on_close = nil,

  -- Render function for notifications. See notify-render()
  render = "default",

  -- Default timeout for notifications
  timeout = 10000,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
  background_colour = "#000000",

  -- Minimum width for notification windows
  minimum_width = 10,

  -- Icons for the different levels
  icons = {
    ERROR = " ",
    WARN = " ",
    INFO = " ",
    DEBUG = " ",
    TRACE = " ",
  },
}

vim.notify = notify
