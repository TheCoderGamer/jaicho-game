/// @description Configuracion inicial (Variables...)

collision_rectangle(x,y,x+5,y+5,obj_player,false,false)

//VARIABLES
walk_spd = 1;         //velocidad en pixeles andanddo
run_spd = 2;          //velocidad en pixeles corriendo

             
timer1 = 1000000;
timer1b = 1000000;
timer1c = 1000000;
dashPixel = 35;         //cantidad de pixeles de Dash

//Setear variables
dir = 0;
moveX = 0;
moveY = 0;
sigXdash = 1;
sigYdash = 1;
facing = 0;
animDashDerecha = false
animDashIzquierda = false
animDashAbajo = false
animDashArriba = false
timerAnim = 0
timer5 = 0
hinput = 0
vinput = 0
tempSigXdash = dashPixel
tempSigYdash = dashPixel
alphaTemp = 1

noC = c_white

// Iniciar sprite
image_speed = .6; 

