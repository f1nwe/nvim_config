return function()
  local keymap = vim.keymap
  vim.g.arduino_use_slime = 1


  keymap.set("n", "<leader>ra", "<cmd>ArduinoAttach<CR>", { desc = "arduino: attach" })
  keymap.set("n", "<leader>rv", "<cmd>ArduinoVerify<CR>", { desc = "arduino: verify" })
  keymap.set("n", "<leader>ru", "<cmd>ArduinoUpload<CR>", { desc = "arduino: upload" })
  keymap.set("n", "<leader>rus", "<cmd>ArduinoUploadAndSerial<CR>", { desc = "arduino: upload and serial" })
  keymap.set("n", "<leader>rs", "<cmd>ArduinoSerial<CR>", { desc = "arduino: serial" })
  keymap.set("n", "<leader>rb", "<cmd>ArduinoChooseBoard<CR>", { desc = "arduino: board" })
  keymap.set("n", "<leader>rp", "<cmd>ArduinoChooseProgrammer<CR>", { desc = "arduino: programmer" })
end
