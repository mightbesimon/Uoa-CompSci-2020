		.ORIG x3000
		AND R2, R2, #0
		AND R3, R3, #0
		ADD R2, R2, #5
		ADD R3, R3, #3
		AND R5, R5, #0
		ADD R5, R5, R3
		AND R3, R3, #0
		ADD R3, R2, R3
		ADD R5, R5, #-1
OUTER	BRz OLP
		AND R4, R4, #0
INNER	ADD R4, R4, R2
		ADD R3, R3, #-1
		BRp INNER
		AND R3, R3, #0
		ADD R3, R3, R4
		ADD R5, R5, #-1
		BRnzp OUTER
OLP		HALT
		.END