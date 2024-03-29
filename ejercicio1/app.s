// Defines
	.equ SCREEN_WIDTH, 640
	.equ SCREEN_HEIGHT, 480
	.equ BITS_PER_PIXEL, 32

// Colores piolas

	.equ AMARILLO, 0xFFF000
	.equ AZUL, 0xFF
	.equ AZUL_CLARO, 0x3333FF
	.equ AZUL_OSCURO, 0x000066
	.equ BLANCO, 0xFFFFFF
	.equ CELESTE, 0x00FFEF
	.equ GRIS, 0x808080
	.equ MARRON, 0x663300
	.equ NARANJA, 0xFF8000
	.equ NEGRO, 0x0
	.equ ROJO, 0xFF0000
	.equ ROJO_CLARO, 0xFF3333
	.equ ROJO_OSCURO, 0xCC0000
	.equ ROSA, 0xFF66FF
	.equ TURQUESA, 0x33FF99
	.equ VERDE, 0xFF00
	.equ VERDE_CLARO, 0x66FF66
	.equ VERDE_OSCURO, 0x006600
	.equ VIOLETA, 0xB300C0
	.equ NUBE_BLANCO, 0xF5F5F3
	.equ NUBE_GRIS, 0xB9D9E8


// Inicializo los registros

	IniRegistros:
		mov x29,x0
		mov x19,SCREEN_WIDTH
		mov x20,SCREEN_HEIGHT
		ret

// Loop infinito para poder ver el trabajo

	InfLoop:
		b InfLoop


.globl main
main:
	bl IniRegistros

	bl Dibuja_fondo_amanecer1
	bl Dibuja_sol_amanecer
	bl Dibuja_pasto

	bl Montanas

		// Seccion fogata

			mov x1,55
			mov x2,455
			bl Pasto_grupal_izq

			mov x1,70
			mov x2,450
			bl Tronco1

			mov x1,127
			mov x2,457
			bl Pasto_grupal_der
			bl Pasto_grupal_izq

			mov x1,150
			mov x2,420
			bl Tronco2

			mov x1,150
			mov x2,445
			bl Tronco2

			mov x1,160
			mov x2,427
			bl Tronco2

			mov x1,85
			mov x2,420
			bl Tronco2

			mov x1,70
			mov x2,430
			bl Tronco2

			mov x1,110
			mov x2,420
			mov x3,135
			mov x4,420
			bl Fogata

		// Nubes

			mov x1,120
			mov x2,50
			bl ConjuntoNubes

			mov x1,420
			mov x2,50
			bl ConjuntoNubes

		// Resto de vegetacion

			// Chiquitos del fondo

				// izquierda
				mov x1,272
				mov x2,221
				mov x3,290
				mov x4,230
				bl Arbusto1

				mov x1,242
				mov x2,231
				mov x3,260
				mov x4,240
				bl Arbusto1

				mov x1,270
				mov x2,250
				bl Pino3

				mov x1,230
				mov x2,260
				bl Pino3

				mov x1,105
				mov x2,265
				bl Pino2

				mov x1,120
				mov x2,261
				mov x3,138
				mov x4,270
				bl Arbusto1

				mov x1,158
				mov x2,253
				mov x3,181
				mov x4,271
				bl Arbusto1
			
				mov x1,147
				mov x2,259
				mov x3,162
				mov x4,270
				bl Arbusto1

				mov x1,80
				mov x2,265
				bl Pino3

				mov x1,90
				mov x2,285
				bl Pino2

				mov x1,40
				mov x2,243
				bl Pino3

				mov x1,55
				mov x2,241
				mov x3,73
				mov x4,250
				bl Arbusto1

				mov x1,0
				mov x2,255
				bl Pino2

				// derecha
				mov x1,380
				mov x2,240
				bl Pino3

				mov x1,400
				mov x2,250
				bl Pino3

				mov x1,423
				mov x2,240
				mov x3,437
				mov x4,248
				bl Arbusto1

				mov x1,500
				mov x2,265
				bl Pino3

				mov x1,460
				mov x2,280
				bl Pino2

				mov x1,555
				mov x2,240
				mov x3,570
				mov x4,248
				bl Arbusto1

				mov x1,540
				mov x2,250
				bl Pino3

				mov x1,565
				mov x2,246
				mov x3,580
				mov x4,254
				bl Arbusto1

				mov x1,527
				mov x2,248
				mov x3,545
				mov x4,257
				bl Arbusto1

				mov x1,610
				mov x2,235
				mov x3,628
				mov x4,244
				bl Arbusto1

				mov x1,600
				mov x2,240
				mov x3,618
				mov x4,249
				bl Arbusto1

				mov x1,632
				mov x2,250
				bl Pino3

			// Medianos del medio

				mov x1,600
				mov x2,298
				bl Pino2

				mov x1,565
				mov x2,305
				bl Pino2

				mov x1,590
				mov x2,330
				bl Pino2

				mov x1,505
				mov x2,260
				mov x3,523
				mov x4,269
				bl Arbusto1

				mov x1,520
				mov x2,320
				bl Pino2

				mov x1,540
				mov x2,300
				mov x3,558
				mov x4,309
				bl Arbusto1

				mov x1,620
				mov x2,300
				mov x3,638
				mov x4,309
				bl Arbusto1

				mov x1,630
				mov x2,310
				mov x3,648
				mov x4,319
				bl Arbusto1

			// Grandes del frente

				// detras de la casa
				mov x1,480
				mov x2,305
				bl Pino3

				mov x1,430
				mov x2,305
				bl Pino2

				mov x1,447
				mov x2,320
				bl Pino2

				mov x1,550
				mov x2,370
				bl Pino1

				mov x1,380
				mov x2,400
				bl Pino1
				
				mov x1,500
				mov x2,380
				bl Pino1

				mov x1,530
				mov x2,380
				bl Pino1

				mov x1,615
				mov x2,415
				bl Pino2

				mov x1,592
				mov x2,420
				bl Pino2

			// Espacio vacio

				mov x1,20
				mov x2,280
				bl Pino3

				mov x1,50
				mov x2,290
				bl Pino3

				mov x1,120
				mov x2,300
				bl Pino3

				mov x1,185
				mov x2,310
				bl Pino2

				mov x1,245
				mov x2,290
				bl Pino2

				mov x1,280
				mov x2,310
				bl Pino2

				mov x1,300
				mov x2,260
				bl Pino3

				mov x1,350
				mov x2,250
				bl Pino3

				mov x1,290
				mov x2,218
				mov x3,308
				mov x4,226
				bl Arbusto1

				mov x1,380
				mov x2,280
				bl Pino2

		// Fin vegetacion

		// Casa

		mov x1,346
		mov x2,430
		bl Tronco1

		mov x1,354
		mov x2,420
		bl Tronco1

		mov x1,361
		mov x2,430
		bl Tronco1

		mov x1,362
		mov x2,410
		bl Tronco1

		mov x1,369
		mov x2,420
		bl Tronco1

		mov x5,50	// Para decidir a qué altura poner la casa
		mov x6,-50	// Para decidir a qué ancho poner la casa

		mov x1,496
		mov x2,385
		add x1,x1,x6
		add x2,x2,x5
		bl Edificio1

		mov x1,460
		mov x2,310
		add x1,x1,x6
		add x2,x2,x5
		bl Ventanas

		mov x1,473
		mov x2,352
		add x1,x1,x6
		add x2,x2,x5
		bl Ventanas

		mov x1,421
		mov x2,391
		add x1,x1,x6
		add x2,x2,x5
		bl Macetas

		mov x1,411
		mov x2,372
		add x1,x1,x6
		add x2,x2,x5
		mov x3,429
		mov x4,381
		add x3,x3,x6
		add x4,x4,x5
		bl Arbusto1

		mov x1,500
		mov x2,391
		add x1,x1,x6
		add x2,x2,x5
		bl Macetas

		mov x1,490
		mov x2,372
		add x1,x1,x6
		add x2,x2,x5
		mov x3,508
		mov x4,381
		add x3,x3,x6
		add x4,x4,x5
		bl Arbusto1

		// Fin casa

	b InfLoop

