   10  HOME 
   20  GR 
   30  TB = 10
   40  DIM X(TB),Y(TB)
   50  DIM DX(TB),DY(TB)
   60  DIM CL(TB)
  100  FOR I = 1 TO TB
  110    CL(I) = INT ( RND (1) * 30)
  120    IF CL(I) < = 1 THEN 
           CL(I) = 1
  130    X(I)  = RND (1) * 38
  135    Y(I)  = RND (1) * 38
  140    DX(I) = RND (1) * 2
  145    DY(I) = RND (1) * 2
  150  NEXT I
  200  FOR I = 1 TO TB
  220    COLOR= CL(I)
  225    PLOT X(I),Y(I)
  230  NEXT I
  240  FOR T = 1 TO 5:
       NEXT 
  250  FOR I = 1 TO TB: REM  CLEAR DOT
  260    COLOR= 0
  265    PLOT X(I),Y(I)
  270    X(I) = X(I) + DX(I)
  275    Y(I) = Y(I) + DY(I)
  290    IF X(I) < = 0 THEN 
           X(I)  = 0:        
           DX(I) = - DX(I)
  300    IF X(I) > = 39 THEN 
           X(I)  = 39:       
           DX(I) = - DX(I)
  310    IF Y(I) < = 0 THEN 
           Y(I)  = 0:        
           DY(I) = - DY(I)
  320    IF Y(I) > = 39 THEN 
           Y(I)  = 39:       
           DY(I) = - DY(I)
  330  NEXT I
  340  GOTO 200