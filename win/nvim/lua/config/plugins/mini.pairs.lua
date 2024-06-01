return {
	{
		'echasnovski/mini.pairs',
    		event = 'InsertEnter', -- Only load when entering insert mode
    		config = function() 
			require('mini.pairs').setup()
    		end
    	}
  }
