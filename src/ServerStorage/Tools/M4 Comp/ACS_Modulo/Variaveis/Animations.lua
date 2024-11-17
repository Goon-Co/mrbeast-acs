local ts = game:GetService('TweenService')
local Debris = game:GetService("Debris")
local module = {
	
	--//Client Animations
	IdleAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = require(script.Parent.Settings).RightPos}):Play() -- require(script).FakeRightPos (For fake arms) | require(script).RightArmPos (For real arms)
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = require(script.Parent.Settings).LeftPos}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)	
	end;
	
	GLReloadAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.875, 0, -1.15) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.5,0.475,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		wait(0.25)	
		ts:Create(objs[2],TweenInfo.new(0.5),{C1 = CFrame.new(-0.875, 0, -1.35) * CFrame.Angles(math.rad(-100), math.rad(-2), math.rad(7.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.6),{C1 = CFrame.new(1.195,1.4,-0.5) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0))}):Play()
		
		wait(0.75)				
		
		ts:Create(objs[2],TweenInfo.new(0.4),{C1 = CFrame.new(-0.875, 0, -1.15) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.4),{C1 = CFrame.new(-0.5,0.475,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		wait(0.25)
		ts:Create(objs[2],TweenInfo.new(0.1),{C1 = CFrame.new(-0.875, 0, -1.125) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5))}):Play()
		objs[5].Handle:WaitForChild("MagIn"):Play()
		
		wait(0.55)
	end;
	
	BipodAnim1 = function(char, speed, objs)
		
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(-0.518,2,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(30))}):Play()
		wait(0.3)
		--arm reaches out
		
		ts:Create(objs[5].Bipod1:WaitForChild("Bipod1"),TweenInfo.new(0.5),{C1 = CFrame.new(0.0,0.0,0.0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))}):Play()
		ts:Create(objs[5].Bipod2:WaitForChild("Bipod2"),TweenInfo.new(0.5),{C1 = CFrame.new(0.0,0.0,0.0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))}):Play()
		wait(0.3)
		--bipod folding down
		
		ts:Create(objs[3],TweenInfo.new(0.4),{C1 = CFrame.new(-0.518,2,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(30))}):Play()
		wait(0.1)
		
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = require(script.Parent.Settings).LeftPos}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)
		wait(0.1)
		--arm neutral
		
	end;
	
	BipodAnim2 = function(char, speed, objs)
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(-0.518,2,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(30))}):Play()
		wait(0.5)
		
		
		ts:Create(objs[5].Bipod1:WaitForChild("Bipod1"),TweenInfo.new(0.7),{C1 = CFrame.new(0.0,0.0,0.0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))}):Play()
		ts:Create(objs[5].Bipod2:WaitForChild("Bipod2"),TweenInfo.new(0.7),{C1 = CFrame.new(0.0,0.0,0.0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))}):Play()
		
		
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = require(script.Parent.Settings).LeftPos}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)
		wait(0.1)
		--arm neutral
		
		
	end;
	
	SwitchAnimAuto = function(char, speed, objs)
		
		ts:Create(objs[5].Lid1:WaitForChild("Lid1"),TweenInfo.new(0.5),{C1 = CFrame.new(0.0,0.0,0.0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))}):Play()
		objs[5].Handle:WaitForChild("SafetyClick"):Play()
		
	end;
	
	SwitchAnimSemi = function(char, speed, objs)
		
		ts:Create(objs[5].Lid1:WaitForChild("Lid1"),TweenInfo.new(0.5),{C1 = CFrame.new(0.0,0.0,0.0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0))}):Play()
		objs[5].Handle:WaitForChild("SafetyClick"):Play()
		
	end;
	
	ClickAnim = function(char, speed, objs)
		objs[5].Handle:WaitForChild("Click"):Play()
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-89), math.rad(-1), math.rad(-1))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.205,0.11,-1.605) * CFrame.Angles(math.rad(-119),math.rad(34),math.rad(-21))}):Play()
		wait(0.20)
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90.5), math.rad(0.5), math.rad(0.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.1955,0.095,-1.6) * CFrame.Angles(math.rad(-120.5),math.rad(35.5),math.rad(-19.5))}):Play()
		wait(0.20)
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.2,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(35),math.rad(-20))}):Play()
	end;
	
	LaserAnim = function(char, speed, objs)
		
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-89), math.rad(-1), math.rad(-1))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.205,0.11,-1.605) * CFrame.Angles(math.rad(-119),math.rad(34),math.rad(-21))}):Play()
		wait(0.20)
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90.5), math.rad(0.5), math.rad(0.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.1955,0.095,-1.6) * CFrame.Angles(math.rad(-120.5),math.rad(35.5),math.rad(-19.5))}):Play()
		wait(0.20)
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.2,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(35),math.rad(-20))}):Play()
		wait(0.20)
	end;
	
	LightAnim = function(char, speed, objs)
		
		objs[5].Handle:WaitForChild("Click"):Play()
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-89), math.rad(-1), math.rad(-1))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.205,0.11,-1.605) * CFrame.Angles(math.rad(-119),math.rad(34),math.rad(-21))}):Play()
		wait(0.20)
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90.5), math.rad(0.5), math.rad(0.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.1955,0.095,-1.6) * CFrame.Angles(math.rad(-120.5),math.rad(35.5),math.rad(-19.5))}):Play()
		wait(0.20)
		ts:Create(objs[2],TweenInfo.new(0.20),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.20),{C1 = CFrame.new(1.2,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(35),math.rad(-20))}):Play()
		wait(0.20)
	end;
	
	SomethingAnim = function(char, speed, objs)
		
		ts:Create(objs[2],TweenInfo.new(1),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(1),{C1 = CFrame.new(1.2,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(35),math.rad(-20))}):Play()
		wait(0.01)
		
		
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(1.6,0.1,-1.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(-10))}):Play()
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(1.6,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(-10))}):Play()
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(1.6,0.1,-1.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(-10))}):Play()
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(1.6,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(-10))}):Play()
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(1.6,0.1,-1.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(-10))}):Play()
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(1.6,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(-10))}):Play()
		wait(0.3)
		
		
		ts:Create(objs[3],TweenInfo.new(1),{C1 = CFrame.new(1.2,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(35),math.rad(-20))}):Play()
		wait(0.3)
		
	end;
	
	StanceDown = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-.875, -0.2, -1.25) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(1.2,-0.05,-1.65) * CFrame.Angles(math.rad(-90),math.rad(35),math.rad(-25))}):Play()
		wait(0.3)	
	end;
	
	StanceUp = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-.875, -1.85, -1.25) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(.65,-0.75,-1.15) * CFrame.Angles(math.rad(-170),math.rad(60),math.rad(15))}):Play()
		wait(0.3)	
	end;
	
	Patrol = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.75, -.9, -1.6) * CFrame.Angles(math.rad(-80), math.rad(-70), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(0.75,0.75,-1) * CFrame.Angles(math.rad(-90),math.rad(-45),math.rad(-25))}):Play()
		wait(0.3)	
	end;
	
	SprintAnim = function(char, speed, objs)
		
		ts:Create(objs[2],TweenInfo.new(0.55),{C1 = CFrame.new(-1, -0.5, -1) * CFrame.Angles(math.rad(-60), math.rad(-60), math.rad(10))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.55),{C1 = CFrame.new(-.7, 0.85, -0.95) * CFrame.Angles(math.rad(-40),math.rad(-35),math.rad(45))}):Play()
		
	end;
	
	EquipAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0),{C1 = CFrame.new(-.875, -0.2, -1.25) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0),{C1 = CFrame.new(1.2,-0.05,-1.65) * CFrame.Angles(math.rad(-90),math.rad(35),math.rad(-25))}):Play()
		wait(0.1)
		objs[5].Handle:WaitForChild("AimUp"):Play()
		ts:Create(objs[2],TweenInfo.new(0.5),{C1 = require(script.Parent.Settings).RightPos}):Play()
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = require(script.Parent.Settings).LeftPos}):Play()
		wait(0.5)
	end;
	
	ChamberAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.975, 0.165, -1.5) * CFrame.Angles(math.rad(-115), math.rad(-10), math.rad(10))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.35),{C1 = CFrame.new(-0.15,0.05,-1.2) * CFrame.Angles(math.rad(-120),math.rad(15),math.rad(15))}):Play()
		wait(0.35)	
		objs[5].Bolt:WaitForChild("SlidePull"):Play()
		ts:Create(objs[3],TweenInfo.new(0.25),{C1 = CFrame.new(-0.15,-0.275,-1.175) * CFrame.Angles(math.rad(-120),math.rad(15),math.rad(15))}):Play()
		ts:Create(objs[5].Handle:WaitForChild("Bolt"),TweenInfo.new(0.25),{C0 = CFrame.new(objs[6].BoltExtend) * CFrame.Angles(0,math.rad(0),0)}):Play()
		ts:Create(objs[5].Handle:WaitForChild("Slide"),TweenInfo.new(0.25),{C0 = CFrame.new(objs[6].SlideExtend) * CFrame.Angles(0,math.rad(0),0)}):Play()
		wait(0.3)
		objs[5].Bolt:WaitForChild("SlideRelease"):Play()
		ts:Create(objs[5].Handle:WaitForChild("Bolt"),TweenInfo.new(0.1),{C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0)}):Play()
		ts:Create(objs[5].Handle:WaitForChild("Slide"),TweenInfo.new(0.1),{C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0)}):Play()
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = require(script.Parent.Settings).RightPos}):Play() -- require(script).FakeRightPos (For fake arms) | require(script).RightArmPos (For real arms)
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = require(script.Parent.Settings).LeftPos}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)	
	end;
	
	ChamberBKAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.875, -0.465, -1.15) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(0.1,-0.15,-1.115) * CFrame.Angles(math.rad(-110),math.rad(25),math.rad(0))}):Play()
		wait(0.3)	
		objs[5].Bolt:WaitForChild("SlideRelease"):Play()
		ts:Create(objs[3],TweenInfo.new(0.15),{C1 = CFrame.new(0.1,-0.15,-1.025) * CFrame.Angles(math.rad(-100),math.rad(30),math.rad(0))}):Play()
		ts:Create(objs[5].Handle:WaitForChild("Bolt"),TweenInfo.new(0.1),{C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0)}):Play()
		ts:Create(objs[5].Handle:WaitForChild("Slide"),TweenInfo.new(0.1),{C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0)}):Play()
		wait(0.15)
	end;
	
	CheckAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.875, 0, -1.15) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.5,0.475,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		wait(.35)
		local Mag1 = objs[5]:WaitForChild("Mag"):clone()
		objs[5].Mag.Transparency = 1
		Mag1.Parent = objs[5]
		Mag1.Name = "Mag1"
		Mag1.Transparency = 0			
		
		local MagW1 = Instance.new("Motor6D")
		MagW1.Part0 = Mag1
		MagW1.Part1 = objs[3].Parent.Parent:WaitForChild("Left Arm")
		MagW1.Parent = Mag1
		MagW1.C1 = Mag1.CFrame:toObjectSpace(objs[3].Parent.Parent:WaitForChild("Left Arm").CFrame)
		ts:Create(MagW1,TweenInfo.new(0),{C0 = CFrame.new(-0.2, 0.5, -0.75) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.45,0.475,-2.05) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		objs[5].Handle:WaitForChild("MagOut"):Play()
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(0.15,0.475,-1.5) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(0))}):Play()
		wait(1.5)
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.45,0.475,-2.05) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.5,0.475,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		objs[5].Handle:WaitForChild("MagIn"):Play()
		Mag1:Destroy()
		objs[5].Mag.Transparency = 0	
		wait(0.3)
	end;
	
	ShellInsertAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.975, -0.365, -1.2) * CFrame.Angles(math.rad(-115), math.rad(-2), math.rad(9))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(1.55,-0.4,-1.15) * CFrame.Angles(math.rad(-100),math.rad(70),math.rad(-41))}):Play()
		wait(0.3)
		objs[5].Handle:WaitForChild("ShellInsert"):Play()
		ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.975, -0.365, -1.2) * CFrame.Angles(math.rad(-110), math.rad(-2), math.rad(9))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(1.6,-0.3,-1.1) * CFrame.Angles(math.rad(-100),math.rad(70),math.rad(-41))}):Play()
		objs[6].Value = objs[6].Value - 1
		objs[7].Value = objs[7].Value + 1
		wait(0.3)
	end;
	
	ReloadAnim = function(char, speed, objs)
		ts:Create(objs[2],TweenInfo.new(0.4),{C1 = CFrame.new(-0.875, 0, -1.15) * CFrame.Angles(math.rad(-94), math.rad(-2), math.rad(7))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.4),{C1 = CFrame.new(-0.518,0.550,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		--Left+Right Reload 1
		wait(0.5)	
		objs[5].Mag.Transparency = 1
		objs[5].M2.Transparency = 1
		local Mag1 = objs[5]:WaitForChild("Mag"):clone()
		Mag1.Parent = objs[5]
		Mag1.Name = "Mag1"
		Mag1.Transparency = 0	
		
		local Mag2 = objs[5]:WaitForChild("M2"):clone()
		Mag2.Parent = objs[5]
		Mag2.Name = "M3"			
		
		local MagW1 = Instance.new("Motor6D")
		MagW1.Part0 = Mag1
		MagW1.Part1 = objs[3].Parent.Parent:WaitForChild("Left Arm")
		MagW1.Parent = Mag1
		MagW1.C1 = Mag1.CFrame:toObjectSpace(objs[3].Parent.Parent:WaitForChild("Left Arm").CFrame)
		
		local MagW2 = Instance.new("Motor6D")
		MagW2.Part0 = Mag2
		MagW2.Part1 = objs[3].Parent.Parent:WaitForChild("Left Arm")
		MagW2.Parent = Mag2
		MagW2.C1 = Mag2.CFrame:toObjectSpace(objs[3].Parent.Parent:WaitForChild("Left Arm").CFrame)
			
		if objs[7].Value > 0 then
			print("not empty")
			Mag2.Transparency = 0
		elseif objs[7].Value == 0 then
			print("empty")
			Mag2.Transparency = 1
		end
		
		
		ts:Create(MagW1,TweenInfo.new(0),{C0 = CFrame.new(-0.18, 0.32, -0.82) * CFrame.Angles(math.rad(-83), math.rad(0), math.rad(1.5))}):Play()
		ts:Create(MagW2,TweenInfo.new(0),{C0 = CFrame.new(-0.18, 0.32, -0.82) * CFrame.Angles(math.rad(-83), math.rad(0), math.rad(1.5))}):Play()
		ts:Create(objs[2],TweenInfo.new(0.5),{C1 = CFrame.new(-0.8725, 0.112, -1.18) * CFrame.Angles(math.rad(-91), math.rad(-4), math.rad(6))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.518,0.550,-2.4) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()
		--Left+Right Reload 2
		wait(.05)
		
		objs[5].Handle:WaitForChild("MagOut"):Play()
		wait(0.25)
		ts:Create(objs[2],TweenInfo.new(0.7),{C1 = CFrame.new(-0.82, 0.110, -1.14) * CFrame.Angles(math.rad(-91), math.rad(-2), math.rad(7))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(-0.65,0.475,-3.05) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(25.5))}):Play()
		--Left+Right Reload 3
		wait(0.5)
		
		ts:Create(objs[2],TweenInfo.new(0.7),{C1 = CFrame.new(-0.80, 0.107, -1.13) * CFrame.Angles(math.rad(-90), math.rad(-3), math.rad(8))}):Play()
		wait(0.2)
		objs[5].Handle:WaitForChild("MagPouch"):Play()
		objs[5].M2.Transparency = 0
		--//RightReload4
		--//Above is where you reach into the pouch.
--		local Mag2 = objs[5]:WaitForChild("Mag"):clone()
--		Mag2.Parent = workspace
--		Mag2.Name = "Mag2"
--		Mag2.Transparency = 0	
--		Mag2.Anchored = false
--		Mag2.CanCollide = true
--		Mag2.Mag:Destroy()		
		
--		Debris:AddItem(Mag2, 15)	
		
		wait(0.2)
		ts:Create(objs[3],TweenInfo.new(0.0),{C1 = CFrame.new(0.25,0.475,-3.05) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5))}):Play()	
		--//Left Reload 4
		wait(0.2)
		
		ts:Create(objs[2],TweenInfo.new(0.7),{C1 = CFrame.new(-0.872, 0.100, -1.17) * CFrame.Angles(math.rad(-96), math.rad(-2), math.rad(14))}):Play()
		--//Right Reload 5
		wait(0.3)	
		
		ts:Create(objs[2],TweenInfo.new(0.7),{C1 = CFrame.new(-0.875, 0.102, -1.15) * CFrame.Angles(math.rad(-97), math.rad(-3), math.rad(15))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.518,0.650,-1.9) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(25.5))}):Play()
		--//RightReload6, LeftReload5
		wait(0.2)
		
		ts:Create(objs[2],TweenInfo.new(0.5),{C1 = CFrame.new(-0.875, 0.102, -1.15) * CFrame.Angles(math.rad(-94), math.rad(-2), math.rad(15))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.2),{C1 = CFrame.new(-0.55,0.650,-2.0) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(15.5))}):Play()
		--//Above is where you bring the new mag back under the gun.
		--//RightReload7, LeftReload6
		wait(0.3)
		ts:Create(objs[3],TweenInfo.new(0.2),{C1 = CFrame.new(-0.518,0.650,-1.5) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(15.5))}):Play()
		objs[5].Handle:WaitForChild("MagIn"):Play()
		ts:Create(objs[2],TweenInfo.new(0.2),{C1 = CFrame.new(-0.875, 0.098, -1.05) * CFrame.Angles(math.rad(-94), math.rad(-2), math.rad(15))}):Play()
		--//RightReload8, LeftReload7
		wait(0.3)
		ts:Create(objs[2],TweenInfo.new(0.4),{C1 = CFrame.new(-0.875, 0.098, -1.1) * CFrame.Angles(math.rad(-94), math.rad(-2), math.rad(15))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.4),{C1 = CFrame.new(-0.518,0.650,-1.55) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(15.5))}):Play()
		--//RightReload9, LeftReload8
		wait(0.4)
		ts:Create(objs[2],TweenInfo.new(0.4),{C1 = CFrame.new(-.65, -0.2, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))}):Play()
		ts:Create(objs[3],TweenInfo.new(0.4),{C1 = CFrame.new(1.2,0.1,-1.6) * CFrame.Angles(math.rad(-120),math.rad(35),math.rad(-20))}):Play()
		
		Mag1:Destroy()
		Mag2:Destroy()
		objs[5].Mag.Transparency = 0
		
		--			print(objs[6].Value)
		--			print(objs[7].Value)
		--			print(objs[8].Value)
		
		
		if (objs[6].Value - (objs[8].Ammo - objs[7].Value)) < 0 then
			objs[7].Value = objs[7].Value + objs[6].Value
			objs[6].Value = 0
			--Evt.Recarregar:FireServer(objs[5].Value)
			
		elseif objs[7].Value <= 0 then
			objs[6].Value = objs[6].Value - (objs[8].Ammo - objs[7].Value)
			--Evt.Recarregar:FireServer(objs[5].Value)
			objs[7].Value = objs[8].Ammo
			objs[9] = false
			
		elseif objs[7].Value > 0 and objs[9] and objs[8].IncludeChamberedBullet then
			objs[6].Value = objs[6].Value - (objs[8].Ammo - objs[7].Value) - 1
			--objs[10].Recarregar:FireServer(objs[6].Value)
			objs[7].Value = objs[8].Ammo + 1
			
		elseif objs[7].Value > 0 and objs[9] and not objs[8].IncludeChamberedBullet then
			objs[6].Value = objs[6].Value - (objs[8].Ammo - objs[7].Value)
			--Evt.Recarregar:FireServer(objs[5].Value)
			objs[7].Value = objs[8].Ammo
		end
		wait(0.55)
		
		--objs[6] == overall ammo
		--objs[7] == magazine ammo
		--objs[8] == idek
		
	end;
	--//Server Animations
	RightHighReady = CFrame.new(-1, -1, -1.5) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0));
	LeftHighReady = CFrame.new(.85,-0.35,-1.15) * CFrame.Angles(math.rad(-170),math.rad(60),math.rad(15));
	
	RightLowReady = CFrame.new(-1, 0.5, -1.25) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0));
	LeftLowReady = CFrame.new(1.25,1.15,-1.35) * CFrame.Angles(math.rad(-60),math.rad(35),math.rad(-25));
	
	RightPatrol = CFrame.new(-1, -.35, -1.5) * CFrame.Angles(math.rad(-80), math.rad(-80), math.rad(0));
	LeftPatrol = CFrame.new(1,1.25,-.75) * CFrame.Angles(math.rad(-90),math.rad(-45),math.rad(-25));
	
	RightAim = CFrame.new(-.575, 0.1, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0));
	LeftAim = CFrame.new(1.4,0.25,-1.45) * CFrame.Angles(math.rad(-120),math.rad(35),math.rad(-25));
	
	RightSprint = CFrame.new(-1, 0.5, -1.25) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0));
	LeftSprint = CFrame.new(1.25,1.15,-1.35) * CFrame.Angles(math.rad(-60),math.rad(35),math.rad(-25));
	
	ShootPos = CFrame.new(0,0,.25);
	
	--//BEGINNING OF SERVER SIDE RELOAD
	
	RightReloadState1 = CFrame.new(-0.875, 0.5, -1.15) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5));
	LeftReloadState1 = CFrame.new(1.195,1.4,-0.5) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0));
	
	RightReloadState2 = CFrame.new(-0.875, 0.5, -1.35) * CFrame.Angles(math.rad(-100), math.rad(-2), math.rad(7.5));
	
	RightReloadState3 = CFrame.new(-0.875, 0.5, -1.15) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5));
	LeftReloadState3 = CFrame.new(-0.5,0.475,-1.6) * CFrame.Angles(math.rad(-100),math.rad(0),math.rad(7.5));
	
	RightReloadState4 = CFrame.new(-0.875, 0.5, -1.125) * CFrame.Angles(math.rad(-95), math.rad(-2), math.rad(7.5));
	
	--//END OF SERVER SIDE RELOAD
	
	--//BEGINNING OF SERVER SIDE CHAMBERING	
	
	RightChamberState1 = CFrame.new(-0.975, 0.165, -1.5) * CFrame.Angles(math.rad(-115), math.rad(-10), math.rad(10));
	LeftChamberState1 = CFrame.new(-0.15,0.05,-1.2) * CFrame.Angles(math.rad(-120),math.rad(15),math.rad(15));												
	
	LeftChamberState2 = CFrame.new(-0.15,-0.275,-1.175) * CFrame.Angles(math.rad(-120),math.rad(15),math.rad(15));
	
	
	--//END OF SERVER SIDE CHAMBERING
	
}

return module
