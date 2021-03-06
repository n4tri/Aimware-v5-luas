----    Base    code    for    auto    updating.
--
--local    cS    =    GetScriptName()
--local    cV    =    '1.0.0'
--local    gS    =    'PUT    LINK    TO    RAW    LUA    SCRIPT'
--local    gV    =    'PUT    LINK    TO    RAW    VERSION'
--
--local    function    AutoUpdate()
--	if    gui.GetValue('lua_allow_http')    and    gui.GetValue('lua_allow_cfg')    then
--		local    nV    =    http.Get(gV)
--		if    cV    ~=    nV    then
--			local    nF    =    http.Get(gS)
--			local    cF    =    file.Open(cS,    'w')
--			cF:Write(nF)
--			cF:Close()
--			print(cS,    'updated    from',    cV,    'to',    nV)
--		else
--			print(cS,    'is    up-to-date.')
--		end
--	end
--end		
--
--callbacks.Register('Draw',    'Auto    Update')
--callbacks.Unregister('Draw',    'Auto    Update')



print("Loaded Rainbow Helper By Starlordaiden!")RAINBOW_SPEED=1;

local a=gui.Tab(gui.Reference("Visuals"),"RAINBOW_REF","Rainbow Helper")
local b=gui.Groupbox(a,"Rainbow Helper",15,10,580)
local c=gui.Groupbox(b,"Rainbow Friendly Chams",0,0,250)
local d=gui.Checkbox(c,"RainbowFrOcCh","Friendly Occluded",false)
local e=gui.Checkbox(c,"RainbowFrVisCh","Friendly Visible",false)
local f=gui.Checkbox(c,"RainbowFrOvCh","Friendly Overlay",false)
local g=gui.Groupbox(b,"Rainbow Enemy Chams",270,0,250)
local h=gui.Checkbox(g,"RainbowEnOvCh","Enemy Occluded",false)
local i=gui.Checkbox(g,"RainbowEnOvCh","Enemy Visible",false)
local j=gui.Checkbox(g,"RainbowEnOvCh","Enemy Overlay",false)
local k=gui.Groupbox(b,"Rainbow Local Chams",0,170,250)
local l=gui.Checkbox(k,"RainbowLoOvCh","Local Occluded",false)
local m=gui.Checkbox(k,"RainbowLoOvCh","Local Visible",false)
local n=gui.Checkbox(k,"RainbowLoOvCh","Local Overlay",false)
local o=gui.Groupbox(b,"Rainbow Ghost Chams",270,170,250)
local p=gui.Checkbox(o,"RainbowGhOvCh","Ghost Occluded",false)
local q=gui.Checkbox(o,"RainbowGhOvCh","Ghost Visible",false)
local r=gui.Checkbox(o,"RainbowGhOvCh","Ghost Overlay",false)
local s=gui.Groupbox(b,"Rainbow Backtrack Chams",0,340,250)
local t=gui.Checkbox(s,"RainbowBaOvCh","Backtrack Occluded",false)
local u=gui.Checkbox(s,"RainbowBaOvCh","Backtrack Visible",false)
local v=gui.Checkbox(s,"RainbowBaOvCh","Backtrack Overlay",false)
local w=gui.Groupbox(b,"Rainbow Weapon Chams",270,340,250)
local x=gui.Checkbox(w,"RainbowWeOvCh","Weapon Occluded",false)
local y=gui.Checkbox(w,"RainbowWeOvCh","Weapon Visible",false)
local z=gui.Checkbox(w,"RainbowWeOvCh","Weapon Overlay",false)
local A=gui.Groupbox(b,"Rainbow Materials",0,510,250)
local B=gui.Checkbox(A,"RainbowWa","Walls",false)
local C=gui.Checkbox(A,"RainbowStPr","Static Props",false)
local D=gui.Checkbox(A,"RainbowSkPr","Sky Box",false)
local E=gui.Groupbox(b,"Rainbow Box",270,510,250)
local F=gui.Checkbox(E,"RainbowFrBo","Friendly",false)
local G=gui.Checkbox(E,"RainbowEnBo","Enemy",false)
local H=gui.Checkbox(E,"RainbowWeBo","Weapon",false)
local I=gui.Groupbox(b,"Rainbow Skeleton",0,680,250)
local J=gui.Checkbox(I,"RainbowFrSk","Friendly",false)
local K=gui.Checkbox(I,"RainbowFrEn","Enemy",false)
local L=gui.Groupbox(b,"Rainbow Glow",270,680,250)
local M=gui.Checkbox(L,"RainbowFrGl","Friendly",false)
local N=gui.Checkbox(L,"RainbowFrGl","Enemy",false)
local O=gui.Groupbox(b,"Rainbow Barrel",0,815,250)
local P=gui.Checkbox(O,"RainbowFrBr","Friendly",false)
local Q=gui.Checkbox(O,"RainbowFrBr","Enemy",false)
local R=gui.Groupbox(b,"Rainbow Extra",270,815,250)
local S=gui.Checkbox(R,"RainbowCr","Crosshair",false)
local T=gui.Checkbox(R,"RainbowCrRec","Crosshair Recoil",false)

function rainbowesp()

RED=math.sin(globals.RealTime()/RAINBOW_SPEED*4)*127+128;
GREEN=math.sin(globals.RealTime()/RAINBOW_SPEED*4+2)*127+128;
BLUE=math.sin(globals.RealTime()/RAINBOW_SPEED*4+4)*127+128;

if d:GetValue()then 
gui.SetValue("esp.chams.friendly.occluded.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if e:GetValue()then 
gui.SetValue("esp.chams.friendly.visible.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if f:GetValue()then 
gui.SetValue("esp.chams.friendly.overlay.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if h:GetValue()then 
gui.SetValue("esp.chams.enemy.occluded.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if i:GetValue()then 
gui.SetValue("esp.chams.enemy.visible.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if j:GetValue()then 
gui.SetValue("esp.chams.enemy.overlay.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if l:GetValue()then 
gui.SetValue("esp.chams.local.occluded.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if m:GetValue()then 
gui.SetValue("esp.chams.local.visible.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if n:GetValue()then 
gui.SetValue("esp.chams.local.overlay.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if p:GetValue()then 
gui.SetValue("esp.chams.ghost.occluded.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if u:GetValue()then 
gui.SetValue("esp.chams.ghost.visible.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if r:GetValue()then 
gui.SetValue("esp.chams.ghost.overlay.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if t:GetValue()then 
gui.SetValue("esp.chams.backtrack.occluded.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if u:GetValue()then 
gui.SetValue("esp.chams.backtrack.visible.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if v:GetValue()then 
gui.SetValue("esp.chams.backtrack.overlay.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if x:GetValue()then 
gui.SetValue("esp.chams.weapon.occluded.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if y:GetValue()then 
gui.SetValue("esp.chams.weapon.visible.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if z:GetValue()then 
gui.SetValue("esp.chams.weapon.overlay.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if B:GetValue()then 
gui.SetValue("esp.world.materials.walls.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if C:GetValue()then 
gui.SetValue("esp.world.materials.staticprops.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if D:GetValue()then 
gui.SetValue("esp.world.materials.skybox.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if F:GetValue()then 
gui.SetValue("esp.overlay.friendly.box.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if G:GetValue()then 
gui.SetValue("esp.overlay.enemy.box.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if H:GetValue()then 
gui.SetValue("esp.overlay.weapon.box.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if M:GetValue()then 
gui.SetValue("esp.overlay.friendly.glow.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if N:GetValue()then 
gui.SetValue("esp.overlay.enemy.glow.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if P:GetValue()then 
gui.SetValue("esp.overlay.friendly.barrel.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if Q:GetValue()then 
gui.SetValue("esp.overlay.enemy.barrel.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if S:GetValue()then 
gui.SetValue("esp.other.crosshair.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if J:GetValue()then 
gui.SetValue("esp.overlay.friendly.skeleton.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if K:GetValue()then 
gui.SetValue("esp.overlay.enemy.skeleton.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end;
if T:GetValue()then 
gui.SetValue("esp.other.recoilcrosshair.clr",math.floor(RED),math.floor(GREEN),math.floor(BLUE),255)end 
end;

callbacks.Register("Draw","rainbowesp",rainbowesp)
