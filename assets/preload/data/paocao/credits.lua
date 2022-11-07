-----可以修改-----

local coder = ''--编程。把名字都像这样的格式写下来，注意逗号要用英文的，有多少写多少
local creator = '无聊的bob'--主创
local painter = 'TG铁轨炖大鹅'--画师
local charter = ''--谱师
local musician = ''--趋势

----不要修改----

local Textsize = 40
local Textcolour = '000000'
local Height_interval = 80

----带妈----
--创建文本贴图--
function onCreatePost()
--image
    makeLuaSprite('creditlist', 'creditlist', 1170, 0)
	addLuaSprite('creditlist', false)
	scaleObject('creditlist', 0.8, 0.65);
	setObjectCamera('creditlist', 'hud');
--text
    makeLuaText('Creator', '[Creator]\n' .. creator, 1000, getProperty('creditlist.x'), 210)
    setTextSize('Creator', Textsize)
    addLuaText('Creator')
    setTextColor('Creator', Textcolour);
    
    makeLuaText('Coder', '\n' .. coder, 1000, getProperty('creditlist.x'), getProperty('Creator.y') + Height_interval)
    setTextSize('Coder', Textsize)
    addLuaText('Coder')
    setTextColor('Coder', Textcolour);
    
    makeLuaText('Painter', '[Porter]\n' .. painter, 1000, getProperty('creditlist.x'), getProperty('Coder.y') + Height_interval)
    setTextSize('Painter', Textsize)
    addLuaText('Painter')
    setTextColor('Painter', Textcolour);
    
    makeLuaText('Charter', '\n' .. charter, 1000, getProperty('creditlist.x'), getProperty('Painter.y') + Height_interval)
    setTextSize('Charter', Textsize)
    addLuaText('Charter')
    setTextColor('Charter', Textcolour);
    
    makeLuaText('Musician', '\n' .. musician, 1000, getProperty('creditlist.x'), getProperty('Charter.y') + Height_interval)
    setTextSize('Musician', Textsize)
    addLuaText('Musician')
    setTextColor('Musician', Textcolour);
    
    setTextFont('Painter', 'ch.ttf')
    setTextFont('Creator', 'ch.ttf')
end

--移动--
function onSongStart()
	doTweenX('cemoveOne', 'creditlist', 170, 1, 'CircInOut')
	runTimer('move2', 0.1, 1)
	runTimer('moveend', 3, 1) 
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'move2' then
        doTweenX('cemoveTwo', 'Creator', 170, 1, 'CircInOut')
        runTimer('move3', 0.1, 1)
    end
    if tag == 'move3' then
        doTweenX('cemoveThree', 'Coder', 170, 1, 'CircInOut')
        runTimer('move4', 0.1, 1)
    end
    if tag == 'move4' then
        doTweenX('cemoveFour', 'Painter', 170, 1, 'CircInOut')
        runTimer('move5', 0.1, 1)
    end
    if tag == 'move5' then
        doTweenX('cemoveFive', 'Charter', 170, 1, 'CircInOut')
        runTimer('move6', 0.1, 1)
    end
    if tag == 'move6' then
        doTweenX('cemoveSix', 'Musician', 170, 1, 'CircInOut')
    end
	if tag == 'moveend' then
	    doTweenX('ceremoveZero', 'Musician', -1000, 1, 'CircInOut')
	    runTimer('remove0', 0.1, 1)
	end
	if tag == 'remove0' then
		doTweenX('ceremoveOne', 'Charter', -1000, 1, 'CircInOut')
		runTimer('remove1', 0.1, 1)
    end
    if tag == 'remove1' then
	    doTweenX('ceremoveTwo', 'Painter', -1000, 1, 'CircInOut')
	    runTimer('remove2', 0.1, 1)
	end
	if tag == 'remove2' then
	    doTweenX('ceremoveThree', 'Coder', -1000, 1, 'CircInOut')
	    runTimer('remove3', 0.1, 1)
	end
	if tag == 'remove3' then
    	doTweenX('ceremoveFour', 'Creator', -1000, 1, 'CircInOut')
    	runTimer('remove4', 0.1, 1)
    end
    if tag == 'remove4' then
    	doTweenX('ceremoveFive', 'creditlist', -1000, 1, 'CircInOut')
	end
end