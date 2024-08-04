require('gitblame').setup({
  enabled = true,
  message_template = "<author> <date> - <summary> <<sha>>", -- template for the blame message, check the Message template section for more options
  date_format = "%d-%m-%Y %r", -- template for the date, check Date format section for more options
  virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
})
