if (not fs.exists ("Tools\\Tools.lua")) then
	tpt.throw_error ("Missing library 'Tools\\Tools.lua'");
	return;
end

require ("Tools\\Tools");

Log ("Loading Refinery...");

-- The program goes here

Log ("Successfully Loaded Refinery!");