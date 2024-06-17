local greet = require('greetings.awesome-module')

vim.api.nvim_create_user_command(
  'WycFormatCpp2',
  function()
    vim.cmd ('echo "Cpp formatting2: ANSI C++ style with two spaces per indent"')
    vim.cmd ('%!astyle --mode=c -s2')
  end,
  {desc = 'Greet Mercel at the Airport if the Lord is willing'}
)

vim.api.nvim_create_user_command(
  'WycFormatCpp',
  function()
    -- vim.cmd ('1,40!astyle --mode=c --style=ansi')
    vim.cmd ('echo "Cpp formatting: ANSI C++ style with two spaces per indent"')
    vim.cmd ('%!astyle --mode=c --style=ansi -s2')
    -- Many thanks to: HEIKER CURIEL at:
    -- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
  end,
  {desc = 'Greet Mercel at the Airport if the Lord is willing'}
)

vim.api.nvim_create_user_command(
  'WycFormatJavascriptV1',
  function()
    vim.cmd ('echo "Format for javascript version one using astyle"')
    vim.cmd ('%!astyle -A1 --indent=spaces=2 -f -j')
    -- vim.cmd ('%!astyle --mode=js')
    -- vim.cmd ('%!astyle --mode=js --style=js --style=attach -A2 -s2')
    -- vim.cmd ('%!astyle --mode=javascript --style=javascript --style=attach -A2 -s2')
    -- vim.cmd ('%!astyle --mode=javascript --style=javascript')
    -- vim.cmd ('%!astyle --mode=java --style=java --style=attach -A2 -s2')
    -- the 's2' makes it so that the indentation level for tabs is two spaces and not one . . .
  end,
  {desc = 'Calls the Artistic Style command line tool to format this file. Tab = TWO Spaces'}
)

vim.api.nvim_create_user_command(
  'WycFormatJavaV1',
  function()
    vim.cmd ('echo "Use Artistic Style ( astyle ) to format in Java Style -- Tab is Two Spaces , Not Four"')
    vim.cmd ('%!astyle --mode=java --style=java --style=attach -A2 -s2')
    -- the 's2' makes it so that the indentation level for tabs is two spaces and not one . . .
  end,
  {desc = 'Calls the Artistic Style command line tool to format this file. Tab = TWO Spaces'}
)

vim.api.nvim_create_user_command(
  'WycFormatOneTrueBraceStyle',
  function()
    vim.cmd ('echo "Use Artistic Style ( astyle ) to format this file in : OneTrueBraceStyle Format"')
    vim.cmd ('%!astyle --style=1tbs --style=otbs -A10')
  end,
  {desc = 'A more condenced format than WycFormatCpp'}
)

vim.api.nvim_create_user_command(
  'WycGreetings',
  function(input)
    vim.cmd ('echo "Vim-Neovim command: WycGreetings: Greetings!"', input)
  end,
  {bang = true, desc = 'Simple Greeting'}
)

return {
	greet = greet
}
