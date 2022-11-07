local xx = 420;
local yy = 350;
local xx2 = 850;
local yy2 = 500;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	makeAnimatedLuaSprite('DeadHallway','background/surgery/phase2/DeadHallway', -700,-330)
	addAnimationByPrefix('DeadHallway','deadhallway', 'deadhallway', 24, true)
	addLuaSprite('DeadHallway',false);
	setProperty('DeadHallway.visible', true);
end