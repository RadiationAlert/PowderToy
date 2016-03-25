tpt.log ("Loading MoreSolids...");

local Args = {...};

local STEEL = elements.allocate ("moresolids", "steel");
elements.element  (STEEL, elements.element(elements.DEFAULT_PT_IRON));
elements.property (STEEL, "Name", "Steel");
elements.property (STEEL, "Description", "Steel, Stronger than iron with a higher melting point due to a custom composition.");
elements.property (STEEL, "Hardness", 64);
elements.property (STEEL, "HighTemperature", 1773.15);
elements.property (STEEL, "Colour", 0xA5A4B9);
elements.property (STEEL, "MenuSection", elem.SC_SOLIDS);
elements.property (STEEL, "MenuVisible", 1);

local DURASTEEL = elements.allocate ("moresolids", "durasteel");
elements.element  (DURASTEEL, elements.element(elements.DEFAULT_PT_IRON));
elements.property (DURASTEEL, "Name", "DSTL");
elements.property (DURASTEEL, "Description", "Dura-Steel, resilient material that requires immense power to break.");
elements.property (DURASTEEL, "Hardness", 256);
elements.property (DURASTEEL, "HighTemperature", 2321.15);
elements.property (DURASTEEL, "Colour", 0x200080);
elements.property (DURASTEEL, "MenuSection", elem.SC_SOLIDS);
elements.property (DURASTEEL, "MenuVisible", 1);

local COPPER = elements.allocate ("moresolids", "copper");
elements.element  (COPPER, elements.element(elements.DEFAULT_PT_METL));
elements.property (COPPER, "Name", "COPR");
elements.property (COPPER, "Description", "Copper, soft metal with similar properties to metal.");
elements.property (COPPER, "Hardness", 16);
elements.property (COPPER, "HighTemperature", 1358.15);
elements.property (COPPER, "Colour", 0xFF7C1F);
elements.property (COPPER, "MenuSection", elem.SC_ELEC);
elements.property (COPPER, "MenuVisible", 1);

local E_RADIOWASTE = elements.allocate ("moresolids", "e_radiowaste");
elements.property (E_RADIOWASTE, "Name", "URAD");
elements.property (E_RADIOWASTE, "Description", "Unstable radiation, formed from radioactive waste under pressure.");
elements.property (E_RADIOWASTE, "Colour", 0x00FF32);
elements.property (E_RADIOWASTE, "Temperature", 337.15);
elements.property (E_RADIOWASTE, "Advection", 0);
elements.property (E_RADIOWASTE, "AirDrag", 0);
elements.property (E_RADIOWASTE, "Loss", 1);
elements.property (E_RADIOWASTE, "Collision", -0.99);
elements.property (E_RADIOWASTE, "Gravity", 0);
elements.property (E_RADIOWASTE, "Diffusion", 0.01);
elements.property (E_RADIOWASTE, "HotAir", 0.002);
elements.property (E_RADIOWASTE, "Falldown", 0);
elements.property (E_RADIOWASTE, "Flammable", 0);
elements.property (E_RADIOWASTE, "Explosive", 0);
elements.property (E_RADIOWASTE, "Meltable", 0);
elements.property (E_RADIOWASTE, "Hardness", 0);
elements.property (E_RADIOWASTE, "Weight", -1);
elements.property (E_RADIOWASTE, "State", ST_NON);
elements.property (E_RADIOWASTE, "Properties", elem.PROP_RADIOACTIVE + elem.TYPE_ENERGY + elem.PROP_LIFE_DEC + elem.PROP_LIFE_KILL_DEC);
elements.property (E_RADIOWASTE, "MenuSection", elem.SC_NUCLEAR);
elements.property (E_RADIOWASTE, "MenuVisible", 1);

local function RADIOACTIVE_GLOW2(index, colr, colg, colb) 
    return 1, ren.PMODE_FLAT+ren.FIRE_ADD, 125, 0, 128, 50, 125, colr / 2, colg / 2, colb / 2
end

elements.property(E_RADIOWASTE, "Graphics", RADIOACTIVE_GLOW2)

local S_RADIOWASTE = elements.allocate ("moresolids", "s_radiowaste");
elements.property (S_RADIOWASTE, "Name", "RADW");
elements.property (S_RADIOWASTE, "Description", "Radioctive waste, converts to unstable radiation under pressure.");
elements.property (S_RADIOWASTE, "HighPressure", 1);
elements.property (S_RADIOWASTE, "HighPressureTransition", elements.MORESOLIDS_PT_E_RADIOWASTE);
elements.property (S_RADIOWASTE, "Colour", 0x00FF00);
elements.property (S_RADIOWASTE, "State", ST_SOLID);
elements.property (S_RADIOWASTE, "Properties", elem.PROP_RADIOACTIVE);
elements.property (S_RADIOWASTE, "MenuSection", elem.SC_NUCLEAR);
elements.property (S_RADIOWASTE, "MenuVisible", 1);

local function RADIOACTIVE_GLOW1(index, colr, colg, colb) 
    return 1, ren.PMODE_FLAT+ren.FIRE_ADD, 125, 0, 255, 0, 125, colr / 2, colg / 2, colb / 2
end

elements.property(S_RADIOWASTE, "Graphics", RADIOACTIVE_GLOW1)

local PERMAFROST = elements.allocate ("moresolids", "permafrost");
elements.property (PERMAFROST, "Name", "PFRS");
elements.property (PERMAFROST, "Description", "Permefrost, extremely cold substance.");
elements.property (PERMAFROST, "Colour", 0xEEEEFF);
elements.property (PERMAFROST, "Temperature", -273.15);
elements.property (PERMAFROST, "Advection", 0.32);
elements.property (PERMAFROST, "AirDrag", 0);
elements.property (PERMAFROST, "AirLoss", 0.32);
elements.property (PERMAFROST, "Loss", 0.5);
elements.property (PERMAFROST, "Collision", 0.01);
elements.property (PERMAFROST, "Gravity", 0.64);
elements.property (PERMAFROST, "Diffusion", 0.01);
elements.property (PERMAFROST, "HotAir", -0.002);
elements.property (PERMAFROST, "Falldown", 1);
elements.property (PERMAFROST, "Flammable", 0);
elements.property (PERMAFROST, "Explosive", 0);
elements.property (PERMAFROST, "Meltable", 0);
elements.property (PERMAFROST, "Hardness", 0);
elements.property (PERMAFROST, "Weight", 98);
elements.property (PERMAFROST, "HeatConduct", 1);
elements.property (PERMAFROST, "State", ST_SOLID);
elements.property (PERMAFROST, "Properties", elem.TYPE_PART);
elements.property (PERMAFROST, "HighTemperature", -273.15 + 32.16);
elements.property (PERMAFROST, "HighTemperatureTransition", MORESOLIDS_PT_PERMAFROST);
elements.property (PERMAFROST, "MenuSection", elem.SC_SOLIDS);
elements.property (PERMAFROST, "MenuVisible", 1);

if (Args[1][1] == false) then
	elements.property (STEEL, "MenuVisible", 0);
	elements.free (STEEL);
end

if (Args[1][2] == false) then
	elements.property (DURASTEEL, "MenuVisible", 0);
	elements.free (DURASTEEL);
end

if (Args[1][3] == false) then
	elements.property (COPPER, "MenuVisible", 0);
	elements.free (COPPER);
end

if (Args[1][4] == false) then
	elements.property (S_RADIOWASTE, "MenuVisible", 0);
	elements.free (S_RADIOWASTE);
	elements.property (E_RADIOWASTE, "MenuVisible", 0);
	elements.free (E_RADIOWASTE);
end

if (Args[1][5] == false) then
	elements.property (PERMAFROST, "MenuVisible", 0);
	elements.free (PERMAFROST);
end

tpt.log ("\nSuccessfully loaded MoreSolids!");