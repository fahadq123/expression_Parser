note
	description: ""
	author: "Fahad Qayyum, Ahmed Sayed Ahmed, Mustafa Alsoufi"
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_LESS_THAN
inherit
	ETF_LESS_THAN_INTERFACE
		redefine less_than end
create
	make
feature -- command
	less_than
	local
			err : EXPRESSION_ERRORS
			lt : L_T
    	do
			-- perform some update on the model state
			create err.make
			if model.done then
    			model.set_error(err.report_expression_is_already_fully_specified)
    		else
				model.reset_message_and_error
				create lt.make
				model.grow (lt)
				model.set_message (err.report_success)
    		end

			etf_cmd_container.on_change.notify ([Current])
    	end

end
