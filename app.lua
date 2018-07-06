local lapis = require("lapis")
local app = lapis.Application()

app:get("/", function()
  return "Welcome to my brand new website"
end)

app:get("*", function()
  return "This page does not exist"
end)

return app
