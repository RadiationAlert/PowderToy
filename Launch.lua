if (not fs.exists ("MoreSolids\\MoreSolids.lua")) then tpt.throw_error ("Could not find primary library!"); return; end

local function sizeX (component)
	local x, _ = component:size ();
	return x;
end

local function sizeY (component)
	local _, y = component:size ();
	return y;
end

local MainForm = Window:new (-1, -1, 256, 128 + 24);
local SubmitButton = Button:new (4, sizeY (MainForm) - 20, 64, 16, "Okay");
local CloseButton = Button:new (sizeX (MainForm) - 68, sizeY (MainForm) - 20, 64, 16, "Close");
local MainLabel = Label:new (0, 4, sizeX(MainForm) - 4, 6, "Select the elements you wish to add to the game...")

local Options = {"STEEL", "DSTL", "COPR", "RADW", "PFRS"};

for index, element in pairs (Options) do
	local _element = element;
	Options[index] = Checkbox:new (8, index * 16 + (index - 1) * 8, 8, 8, _element);
	MainForm:addComponent (Options[index]);
end

function getOptions ()
	for index, button in pairs (Options) do
		local _state = button:checked ();
		Options[index] = _state;
	end
	
	interface.closeWindow (MainForm);
	assert(loadfile("MoreSolids\\MoreSolids.lua"))(Options);
end

SubmitButton:action (function () getOptions () end);
CloseButton:action (function() interface.closeWindow (MainForm) end);
MainForm:onTryExit (function() interface.closeWindow (MainForm) end);

MainForm:addComponent (MainLabel);
MainForm:addComponent (SubmitButton);
MainForm:addComponent (CloseButton);
interface.showWindow (MainForm);