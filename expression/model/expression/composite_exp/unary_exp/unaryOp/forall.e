note
	description: "Summary description for {FORALL}."
	author: "Fahad Qayyum, Ahmed Sayed Ahmed, Mustafa Alsoufi"
	date: "$Date$"
	revision: "$Revision$"

class
	FORALL

inherit
	UNARYEXP
create make

--feature --constructor
--	make_forAll
--		do
--		--	make_unary_op(current)
--		end
feature --inherited features

	accept(v : VISITOR)
		do
			v.visist_FORALL(current)
		end
	output : STRING
		do
			Result :="&&"
		end

end
