timerMoneda = timerMoneda +1
if timerMoneda >= 0  && timerMoneda < 10 {draw_sprite(spr_moneda,0,x,y)}
if timerMoneda >= 10 && timerMoneda < 20 {draw_sprite(spr_moneda,1,x,y)}
if timerMoneda >= 20 && timerMoneda < 30 {draw_sprite(spr_moneda,2,x,y)}
if timerMoneda >= 30 && timerMoneda <= 40 {draw_sprite(spr_moneda,3,x,y)}
if timerMoneda >= 40 {timerMoneda = 0}