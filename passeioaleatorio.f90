

! 0 <= r <= 1

!1 dimensão:
if (r > 0.5) then
 x = x + 1
else
 x = x - 1
end if

!2 dimensões:
if (r < 0.25) then
 x = x + 1
end if
if (0.25 < r < 0.5) then
 x = x - 1
end if
if (0.5 < r < 0.75) then
 y = y + 1
end if
if (0.75 < r < 1) then
 y = y - 1
end if

!paredes rígidas:
!add limites para x e y
!bate na parede e volta
if (y > ymax) then
 y = y - 1         
if (x > xmax) then
 x = x - 1 
