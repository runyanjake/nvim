-- hello.lua

-- Define a function that prints a greeting
local function hello_world()
  print("Hello, Neovim!")
end

-- Create a command ":SayHello" that runs the say_hello function
vim.api.nvim_create_user_command('HelloWorld', hello_world, {})

-- Optionally, set up an autocmd that says hello when entering a buffer
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.notify("Welcome to Jake's Neovim!")
  end,
})

