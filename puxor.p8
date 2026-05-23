pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
--do this when brain not mush:
--https://youtu.be/obzmfxg2ezm?si=d6_yzqla7ociom7h

function _init()
--map

--path var
 --s for square
 sx=62
 sy=62
 start={sx,sy}
 
 random=flr(rnd(5))
 if random==0 then random+=1 end
  
 
 pathcol=4
 
 lcol=6
 rcol=6
 ucol=6
 dcol=6
 
 bgcol=13
end

function _update()

 locatepath()
end

function _draw()
 cls(bgcol)
 --origin sq
	rectfill(sx,sy,sx+7,sy+7,pathcol)

-- print(random)
 drawpath()
 choosepath()
end
-->8
--paths

function locatepath()
-- foreach(start,print)
-- foreach(left,print)
-- foreach(right,print)
-- foreach(up,print)
-- foreach(down,print)

 --left space
 	lx=start[1]-8
 	ly=start[2]

 	left={lx,ly}
	
 --right
  rx=start[1]+8
 	ry=start[2]

 	right={rx,ry} 
 
 --up
  ux=start[1]
 	uy=start[2]-8

 	up={ux,uy} 
 
 --down
  dx=start[1]
 	dy=start[2]+8

 	down={dx,dy} 
end

function drawpath() 
 --l
 rectfill(lx,ly,lx+7,sy+7,lcol)
 --r
 rectfill(rx,ry,rx+7,ry+7,rcol)
 --u
 rectfill(ux,uy,ux+7,uy+7,ucol)
 --d
 rectfill(dx,dy,dx+7,dy+7,dcol) 

end

function choosepath()
  --choose path direction
 n=1
 e=2
 s=3
 w=4
 
 if random==n then 
  print("north") 
 elseif random==e then
  print("east")
 elseif random==s then
  print("south")
 elseif random==w then
  print("west")
 else
  print("error")
 end
 
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
