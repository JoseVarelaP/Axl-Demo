local t = Def.ActorFrame{}


for i=1,58 do
	for ai=1,22 do
		t[#t+1] = Def.ActorFrame{
				OnCommand=cmd(fov,90;z,90);
			Def.Quad{
				OnCommand=cmd(x,-288;y,-212;addx,10*i;addy,19.9*ai;zoomy,20;zoomx,10;rainbow;effectperiod,.1*i*ai);
			};
		};
	end
end

t[#t+1] = Def.Quad{
	OnCommand=cmd(zoomto,630,470;diffuse,0,0,0,0.8;fadebottom,0.9);
};

for i=1,50 do
	for ai=1,20 do
		t[#t+1] = Def.ActorFrame{
				OnCommand=cmd(fov,90;rotationx,0;z,0;y,-100);
				Def.ActorFrame{
				OnCommand=cmd(spin;effectmagnitude,0,10,0);
					Def.Quad{
						OnCommand=cmd(x,-300;diffusealpha,0.2;addx,30*i;addy,20*ai;z,10*ai;zoom,30;bob;effectmagnitude,0,3*ai,1*i*ai;effectperiod,10;effectoffset,1*ai);
					};
				};
		};
	end
end

for i=1,50 do
	for ai=1,20 do
		t[#t+1] = Def.ActorFrame{
				OnCommand=cmd(fov,90;rotationx,-45;z,-330);
				Def.ActorFrame{
				OnCommand=cmd(x,-310;addx,30*i;y,20*ai;z,10*ai;zoom,30;spin;effectmagnitude,1*i,0,2*ai);
					Def.Quad{
						OnCommand=cmd(bob;effectmagnitude,0,10*i,5*ai;effectperiod,30);
					};
				};
		};
	end
end

return t;