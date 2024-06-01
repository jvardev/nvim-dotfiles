return {
	{
    		'echasnovski/mini.nvim',
		event = 'BufReadPost', -- Load after buffer is read
		config = function()
			require('mini.git').setup()
		end
  	}
  }
