local Element = tpt.input ("Element Reader", "Enter in a valid element id pointer...");

local File = io.open ("ReadElement_Log.txt", "w");

for index, value in pairs ( elements.element (elements["DEFAULT_PT_"..Element]) )  do
	File:write (index..": "..value.."\n");
end

File:close ();