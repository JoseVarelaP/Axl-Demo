local t = Def.ActorFrame{}

local AxlStartTime = 30

t[#t+1] = Def.ActorFrame{

	Def.Quad{
	OnCommand=cmd(FullScreen;diffuse,color("#00787F"));
	};

	LoadActor("DesktopIcons")..{ OnCommand=cmd(SetTextureFiltering,false;y,10;x,5;horizalign,left;vertalign,top) };

	-- The My Computer
	Def.ActorFrame{
	OnCommand=cmd(Center);
		LoadActor("NoScroll_ExplorerBG")..{ OnCommand=cmd(SetTextureFiltering,false) };
		LoadActor("Icons/Up_Open")..{ OnCommand=cmd(SetTextureFiltering,false;x,10;y,-80) };

		Def.ActorFrame{
		OnCommand=cmd(sleep,19;diffusealpha,0);
			LoadActor("Icons/BackFowardOff")..{ OnCommand=cmd(SetTextureFiltering,false;y,-80;x,-80) };
		};

		Def.ActorFrame{
		OnCommand=cmd(sleep,15;diffusealpha,0);
			-- Text actors
			-- Text in current location
			LoadActor("Icons/Computer")..{ OnCommand=cmd(SetTextureFiltering,false;y,-47;x,-97) };
			LoadFont("MS_Serif")..{ Text="My Computer"; OnCommand=cmd(diffuse,Color.Black;zoom,0.4;x,-54;y,-47;PixelFont) };
			-- Text in current location (Window Title)
		 	LoadActor("Icons/Computer")..{ OnCommand=cmd(SetTextureFiltering,false;y,-136;x,-151) };
		 	LoadFont("MS_Bold")..{ Text="My Computer"; OnCommand=cmd(zoom,0.6;horizalign,left;x,-140;y,-137;PixelFont) };
	
			-- Bottom text (status bar)
			LoadFont("MS_Serif")..{ Text="2 object(s)"; OnCommand=cmd(diffuse,Color.Black;zoom,0.4;horizalign,left;x,-156;y,135;PixelFont) };
	
			LoadActor("Icons/Computer")..{ OnCommand=cmd(SetTextureFiltering,false;y,136;x,89) };
			LoadFont("MS_Serif")..{ Text="My Comp"; OnCommand=cmd(diffuse,Color.Black;zoom,0.4;horizalign,left;x,100;y,135;PixelFont) };
	
			-- Floppy disk icon
			Def.ActorFrame{
			OnCommand=cmd(x,-118;y,-10);
				LoadActor("Icons/Hi_Floppy")..{ OnCommand=cmd(SetTextureFiltering,false;sleep,7.8;queuecommand,"ToggleColor");
				ToggleColorCommand=cmd(diffusealpha,0);
				};
				LoadActor("Icons/Selected_Hi_Floppy")..{ OnCommand=cmd(SetTextureFiltering,false;diffusealpha,0;sleep,7.8;queuecommand,"ToggleColor");
				ToggleColorCommand=cmd(diffusealpha,1);
				};
				LoadFont("MS_Serif")..{ Text="Floppy Disk (A:)"; OnCommand=cmd(zoom,0.4;diffuse,Color.Black;y,25;PixelFont;sleep,7.8;queuecommand,"ToggleColor");
				ToggleColorCommand=cmd(strokecolor,color("0,0,1,1");diffuse,Color.White;);
				};
			};
	
			-- Hard Drive Icon
			Def.ActorFrame{
			OnCommand=cmd(x,-38;y,-10);
				LoadActor("Icons/Hi_HDD")..{ OnCommand=cmd(SetTextureFiltering,false) };
				LoadFont("MS_Serif")..{ Text="HDA1 (C:)"; OnCommand=cmd(zoom,0.4;diffuse,Color.Black;y,25;PixelFont) };
			};
		};

		Def.ActorFrame{
		OnCommand=cmd(hibernate,19;diffusealpha,1);
			LoadActor("Icons/BackFowardOff")..{ OnCommand=cmd(SetTextureFiltering,false;y,-80;x,-80;cropleft,0.2) };
			LoadActor("Icons/BackOn")..{ OnCommand=cmd(SetTextureFiltering,false;y,-79;x,-124) };
			-- Text actors
			-- Text in current location
			LoadActor("Icons/Floppy")..{ OnCommand=cmd(SetTextureFiltering,false;y,-46;x,-97) };
			LoadFont("MS_Serif")..{ Text="Floppy Disk (A:)"; OnCommand=cmd(diffuse,Color.Black;zoom,0.4;x,-48;y,-47;PixelFont) };
			-- Text in current location (Window Title)
		 	LoadActor("Icons/Floppy")..{ OnCommand=cmd(SetTextureFiltering,false;y,-136;x,-150) };
		 	LoadFont("MS_Bold")..{ Text="Floppy Disk (A:)"; OnCommand=cmd(zoom,0.6;horizalign,left;x,-140;y,-137;PixelFont) };
	
			-- Bottom text (status bar)
			LoadFont("MS_Serif")..{ Text="1 object"; OnCommand=cmd(diffuse,Color.Black;zoom,0.4;horizalign,left;x,-156;y,135;PixelFont) };
	
			LoadActor("Icons/Floppy")..{ OnCommand=cmd(SetTextureFiltering,false;y,136;x,90) };
			LoadFont("MS_Serif")..{ Text="A:"; OnCommand=cmd(diffuse,Color.Black;zoom,0.4;horizalign,left;x,100;y,135;PixelFont) };
	
			-- Axl program icon
			Def.ActorFrame{
			OnCommand=cmd(x,-120;y,-18);
				LoadActor("Icons/Axl")..{ OnCommand=cmd(SetTextureFiltering,false;x,-30;sleep,6.8;queuecommand,"ToggleColor");
				ToggleColorCommand=cmd(diffusealpha,0);
				};
				LoadActor("Icons/Selected_Axl")..{ OnCommand=cmd(SetTextureFiltering,false;x,-30;diffusealpha,0;sleep,6.8;queuecommand,"ToggleColor");
				ToggleColorCommand=cmd(diffusealpha,1);
				};
				LoadFont("MS_Serif")..{ Text="Axl.exe"; OnCommand=cmd(zoom,0.4;diffuse,Color.Black;y,0;PixelFont;sleep,6.8;queuecommand,"ToggleColor");
				ToggleColorCommand=cmd(strokecolor,color("0,0,1,1");diffuse,Color.White;);
				};
			};

		};

		Def.ActorFrame{
		OnCommand=cmd(hibernate,AxlStartTime;diffusealpha,1);
			LoadActor("ProgramWindow")..{ OnCommand=cmd(SetTextureFiltering,false) };
			LoadActor("Icons/Axl")..{ OnCommand=cmd(SetTextureFiltering,false;y,-128;x,-148) };
			LoadFont("MS_Bold")..{ Text="Axl"; OnCommand=cmd(zoom,0.6;horizalign,left;x,-138;y,-128;PixelFont) };
		};

	};

	-- Taskbar
	LoadActor("TaskBar")..{ OnCommand=cmd(SetTextureFiltering,false;vertalign,bottom;y,SCREEN_BOTTOM;CenterX) };

	Def.ActorFrame{
	OnCommand=cmd(y,SCREEN_BOTTOM-2;x,60;sleep,19;diffusealpha,0);
		LoadActor("AppOpen")..{ OnCommand=cmd(SetTextureFiltering,false;vertalign,bottom;horizalign,left;) };
		LoadActor("Icons/Computer")..{ OnCommand=cmd(SetTextureFiltering,false;y,-11;x,12) };
		LoadFont("MS_Bold")..{ Text="My Computer"; OnCommand=cmd(diffuse,Color.Black;zoom,0.6;horizalign,left;x,25;y,-11;PixelFont) };
	};

	Def.ActorFrame{
	OnCommand=cmd(y,SCREEN_BOTTOM-2;x,60;hibernate,19;diffusealpha,1);
		LoadActor("AppOpen")..{ OnCommand=cmd(SetTextureFiltering,false;vertalign,bottom;horizalign,left;sleep,11;queuecommand,"ToggleColor");
		ToggleColorCommand=cmd(visible,false);
		};
		LoadActor("AppHidden")..{ OnCommand=cmd(visible,false;SetTextureFiltering,false;vertalign,bottom;horizalign,left;sleep,11;queuecommand,"ToggleColor");
		ToggleColorCommand=cmd(visible,true);
		};
		LoadActor("Icons/Floppy")..{ OnCommand=cmd(SetTextureFiltering,false;y,-10;x,12) };
		LoadFont("MS_Bold")..{ Text="Floppy Disk (A:)"; OnCommand=cmd(diffuse,Color.Black;zoom,0.6;horizalign,left;x,25;y,-12;PixelFont;sleep,11;queuecommand,"ToggleColor");
		ToggleColorCommand=cmd(visible,false);
		};

		LoadFont("MS_Serif")..{ Text="Floppy Disk (A:)"; OnCommand=cmd(diffuse,Color.Black;zoom,0.4;horizalign,left;x,25;y,-12;PixelFont;visible,false;sleep,11;queuecommand,"ToggleColor");
		ToggleColorCommand=cmd(visible,true);
		};
	};

	Def.ActorFrame{
	OnCommand=cmd(y,SCREEN_BOTTOM-2;x,222;hibernate,AxlStartTime;diffusealpha,1);
		LoadActor("AppOpen")..{ OnCommand=cmd(SetTextureFiltering,false;vertalign,bottom;horizalign,left;) };
		LoadActor("Icons/Axl")..{ OnCommand=cmd(SetTextureFiltering,false;y,-10;x,12) };
		LoadFont("MS_Bold")..{ Text="Axl"; OnCommand=cmd(diffuse,Color.Black;zoom,0.6;horizalign,left;x,25;y,-11;PixelFont) };
	};






	-- Mouse Cursor
	LoadActor("MouseCursor")..{
		InitCommand=cmd(SetTextureFiltering,false;Center;zoom,0.0820);
		BeginCommand=cmd(sleep,6;decelerate,1;x,SCREEN_CENTER_X-110;y,SCREEN_CENTER_Y+5;sleep,2.5;diffusealpha,0);
		OnCommand=cmd(sleep,12;diffusealpha,1;sleep,1;linear,0.5;y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X-120;sleep,4;diffusealpha,0);
	};

	LoadActor("MouseBusy")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-110;y,SCREEN_CENTER_Y+5;SetTextureFiltering,false;zoom,0.0820);
		BeginCommand=cmd(diffusealpha,0;sleep,9.5;diffusealpha,1);
		OnCommand=cmd(sleep,12;diffusealpha,0;sleep,5.5;y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X-120;diffusealpha,1;sleep,3;diffusealpha,0);
	};





}

-- Program mask
t[#t+1] = Def.ActorFrame{
	OnCommand=cmd(hibernate,AxlStartTime+4);
	Def.Quad{
		OnCommand=cmd(zwrite,1;blend,"BlendMode_NoEffect";Center;x,SCREEN_CENTER_X+107+50;zoomto,300,500;horizalign,left)
	};
	Def.Quad{
		OnCommand=cmd(zwrite,1;blend,"BlendMode_NoEffect";Center;x,SCREEN_CENTER_X-108-50;zoomto,300,500;horizalign,right)
	};
	Def.Quad{
		OnCommand=cmd(zwrite,1;blend,"BlendMode_NoEffect";Center;y,SCREEN_CENTER_Y+137;zoomto,800,900;vertalign,top)
	};
	Def.Quad{
		OnCommand=cmd(zwrite,1;blend,"BlendMode_NoEffect";Center;y,SCREEN_CENTER_Y-118;zoomto,800,900;vertalign,bottom)
	};
	LoadActor("InsideAnimation.lua")..{
		OnCommand=cmd(zoom,0.5;Center;ztest,1);
	};
};

return t;