return {
  'github/copilot.vim',
  lazy = false,
  config = function()
    vim.g.copilot_node_command = '/usr/local/n/versions/node/22.2.0/bin/node'
  end,
}
