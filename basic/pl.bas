

DECLARE SUB crackhouse ()
DECLARE SUB infobooth ()
DECLARE SUB bar ()
DECLARE SUB bank ()
DECLARE SUB gangwar ()
DECLARE SUB picknsave ()
DECLARE SUB gunshack ()
DECLARE SUB walkout ()
DECLARE SUB walkin ()
DECLARE SUB store ()
DECLARE SUB copchase ()
DECLARE SUB GetPressc ()
DECLARE SUB GetPressb ()
DECLARE SUB casino ()
DECLARE SUB instructions ()
DECLARE SUB citylayout ()
DECLARE SUB opening1 ()
DECLARE SUB opening2 ()
DECLARE SUB GetPress ()

DIM SHARED money, damage, poweed, pocrack, pocoke
DIM SHARED weed, crack, coke, guns, uzis, bullets
DIM SHARED steve%, thunder, rechase, robert, steve
DIM SHARED day%, lives, joncops, mislaunch, missiles
DIM SHARED account, name$, grenades, thunguns, thunbullets
DIM SHARED loan, gngname$, thunuzis, thunmislaunch
DIM SHARED members, bouncer, thunmissiles, thungrenades
DIM SHARED id


'add the nocheat file here
ON ERROR GOTO Handler
opening1
1
SCREEN 0: WIDTH 80  'normal screen
wtsthenm:
CLS
PRINT ""
PRINT "        **  Continue  **"
PRINT "================================"
PRINT ""
PRINT "   Do you have a saved game?"
INPUT "         (Y or N) "; douhve$
douhve$ = UCASE$(douhve$)  'make the answer upper case
IF douhve$ = "N" THEN GOTO 2398467
PRINT ""
filename$ = ""
LOCATE 8, 1
PRINT " What is the name of the file?"
INPUT filename$
OPEN filename$ FOR INPUT AS 1
INPUT #1, uzis
INPUT #1, guns
INPUT #1, bullets
INPUT #1, steve%
INPUT #1, crack                    'input saved game
INPUT #1, weed
INPUT #1, coke
INPUT #1, money
INPUT #1, day%
INPUT #1, account
INPUT #1, loan
INPUT #1, members
INPUT #1, thunder
INPUT #1, lives
INPUT #1, name$
INPUT #1, gngname$
INPUT #1, freegun
INPUT #1, freecrk
INPUT #1, robert
INPUT #1, mislaunch
INPUT #1, missiles
INPUT #1, grenades
INPUT #1, thunguns
INPUT #1, thunbullets
INPUT #1, thunuzis
INPUT #1, thunmislaunch
INPUT #1, thunmissiles
INPUT #1, thungrenades
INPUT #1, id
CLOSE #1
KILL filename$       'delete
nosave = 1
xm% = 14
ym% = 40
PRINT ""
PRINT "       Your Game has been recovered."
PRINT ""
PRINT "        This file has been deleted."
PRINT ""
PRINT "   You will be able to resave this game"
PRINT "       After playing it for 5 days."
PRINT " A day is counted when something happens,"
PRINT "  so, 'Save Your Game' will be disabled"
PRINT "          until 5 things happen."
PRINT "                 Got it?"
GetPress
GOTO 350

2398467
CLS
filename$ = ""
mislaunch = 0
missiles = 0
grenades = 0
thunguns = 50                    'sets variables to start
thunbullets = 250
thunuzis = 3
thunmislaunch = 1
thunmissiles = 5
thungrenades = 20
drunk% = 0
drunkb% = 0
id = 0
nosave = 10
robert = 0
guns = 1
uzis = 0
bullets = 10
steve% = 0
crack = 5
weed = 0
coke = 0
money = 10000
day% = 1
account = 0
loan = 0
members = 1
thunder = 50
lives = 5
name$ = ""
xm% = 14
ym% = 40
damage = 0
opening2
DO
LOCATE 16, 30
INPUT b$
b$ = UCASE$(b$)
IF b$ = "Y" THEN GOTO 10
LOCATE 17, 1
PRINT ""
PRINT "          What would you like the name of your gang to be?"
INPUT "                          ? ", gngname$
IF b$ = "Y" THEN GOTO 10
IF b$ = "N" THEN GOTO 350
IF b$ = "DIE" THEN lives = 1: filename$ = "": GOTO 40000
IF b$ = "T" THEN GOTO 350
IF b$ = "0" THEN qwe% = 0: GOTO 310
IF b$ = "1" THEN qwe% = 1: GOTO 310
IF b$ = "2" THEN qwe% = 2: GOTO 310
IF b$ = "3" THEN qwe% = 3: GOTO 310
IF b$ = "4" THEN qwe% = 4: GOTO 310
IF b$ = "5" THEN qwe% = 5: GOTO 310
IF b$ = "6" THEN qwe% = 6: GOTO 310
IF b$ = "7" THEN qwe% = 7: GOTO 310
IF b$ = "8" THEN qwe% = 8: GOTO 310
IF b$ = "9" THEN qwe% = 9: GOTO 310
IF b$ = "10" THEN qwe% = 10: GOTO 310
IF b$ = "11" THEN qwe% = 11: GOTO 310
IF b$ = "12" THEN qwe% = 12: GOTO 310
IF b$ = "13" THEN qwe% = 13: GOTO 310
IF b$ = "14" THEN qwe% = 14: GOTO 310
IF b$ = "15" THEN qwe% = 15: GOTO 310
IF b$ = "16" THEN qwe% = 16: GOTO 310
IF b$ = "17" THEN qwe% = 17: GOTO 310
IF b$ = "18" THEN qwe% = 18: GOTO 310
IF b$ = "19" THEN qwe% = 19: GOTO 310
IF b$ = "20" THEN qwe% = 20: GOTO 310
LOOP UNTIL b$ = "Y" OR b$ = "N"
10
instructions
350

RANDOMIZE TIMER
pocrack = INT(RND * 2001) + 500
RANDOMIZE TIMER
poweed = INT(RND * 51) + 50
RANDOMIZE TIMER
pocoke = INT(RND * 10001) + 5000

citylayout
IF nosave < 6 THEN
  LOCATE 13, 11
  PRINT "�"
  LOCATE 14, 11
  PRINT "�"
  LOCATE 15, 11
  PRINT "�"
END IF
360
RANDOMIZE TIMER
stopwalk% = INT(RND * 35)
IF stopwalk% > 0 THEN GOTO 370
300 'wander the city
RANDOMIZE TIMER
qwe% = INT(RND * 22)
310
RANDOMIZE TIMER
driveby% = INT(RND * 2)
RANDOMIZE TIMER
dd% = INT(RND * 15) + 6
RANDOMIZE TIMER
bd% = INT(RND * 2)
RANDOMIZE TIMER
drugtp% = INT(RND * 3)
IF drugtp% = 0 THEN drgtp$ = "weed"
IF drugtp% = 1 THEN drgtp$ = "crack"
IF drugtp% = 2 THEN drgtp$ = "cocaine"
CLS
FOR col = 0 TO 15
 CLS
 LOCATE 2, 13
 COLOR col
 PRINT "**      Walking around the city      **"
 PRINT "=================================================================="
 looper = 0
 DO WHILE looper < 500
 looper = looper + 1
 LOOP
NEXT col
COLOR 7
CLS
PRINT ""
PRINT "            **      Walking around the city      **"
PRINT "=================================================================="
PRINT ""
PRINT ""
PRINT ""
PRINT "             You are currantly wandering the city."
looper = 0
DO WHILE looper < 10000
looper = looper + 1
LOOP
333
CLS
PRINT ""
PRINT "            **      Walking around the city      **"
PRINT "=================================================================="
PRINT ""
aa$ = INKEY$
IF aa$ = "8" OR aa$ = "6" OR aa$ = "4" OR aa$ = "2" THEN GOTO 333
LOCATE 7, 1

RANDOMIZE TIMER
IF qwe% = 0 THEN qwe% = 18
IF qwe% = 1 AND crack < 5 THEN qwe% = 15
IF qwe% = 1 THEN
  PRINT "   You meet a Guy who offers you $ 20,000 for 5 units of Crack."
  PRINT "                   Do you want to deal?"
  INPUT "                      (Y or N)  ", ewq$
  ewq$ = UCASE$(ewq$)
  IF ewq$ = "Y" AND bd% = 0 THEN
    PRINT ""
    PRINT "       The cops see you before the deal goes through"
    PRINT "                  and start chasing you!!"
    PRINT ""
    GetPressc
    GOTO 60000
  END IF
  IF ewq$ = "Y" AND bd% = 1 THEN
    crack = (crack - 5)
    money = (money + 20000)
    PRINT ""
    PRINT "               The Deal goes smoothly."
    GOTO 330
  END IF
  IF ewq$ = "N" THEN
    PRINT ""
    PRINT "             The strange man walks away."
    GOTO 330
  END IF
END IF

IF qwe% = 2 THEN
  PRINT "                     Crack prices drop!!"
  pocrack = 400
  GOTO 330
END IF
IF qwe% = 3 THEN
  PRINT "                     Weed Prices drop!!"
  poweed = 40
  GOTO 330
END IF
IF qwe% = 4 THEN
  PRINT "                 There is a HUGE cocaine bust"
  PRINT "                   Prices are outrageous!!"
  pocoke = pocoke * 3
  GOTO 330
END IF
IF qwe% = 5 OR qwe% = 7 THEN
  GOTO 334
END IF
IF qwe% = 6 THEN
  PRINT "                          DRIVE - BY !!   "
  looper = 1: DO WHILE looper < 13000: looper = looper + 1: LOOP
  IF driveby% = 0 THEN
    PRINT ""
    PRINT "                            You Die."
    PRINT ""
    GOTO 40000
  END IF
  IF driveby% = 1 THEN
    PRINT ""
    PRINT "                            You Live."
    GOTO 330
  END IF
END IF
IF qwe% = 8 THEN
  papcut% = INT(RND * 20)
  IF papcut% < 15 THEN
    PRINT "                          DRIVE - BY !!   "
    looper = 1: DO WHILE looper < 13000: looper = looper + 1: LOOP
    IF driveby% = 0 THEN
      PRINT ""
      PRINT "                            You Die."
      PRINT ""
      GOTO 40000
    END IF
    IF driveby% = 1 THEN
      PRINT ""
      PRINT "                            You Live."
      GOTO 330
    END IF
  END IF
  PRINT "                     You get a paper cut"
  looper = 1
  DO WHILE looper < 13000
  looper = looper + 1
  LOOP
  PRINT ""
  PRINT "                      It gets infected"
  looper = 1
  DO WHILE looper < 13000
  looper = looper + 1
  LOOP
  PRINT ""
  PRINT "                        Well, you die."
  PRINT ""
  GOTO 40000
END IF
IF qwe% = 9 THEN
  PRINT "        You find a dead guy, with 20 units of cocaine!"
  coke = coke + 20
  GOTO 330
END IF
IF qwe% = 10 THEN
  IF guns >= 1 OR uzis >= 1 THEN
    IF bullets > 0 THEN
      PRINT "       You see a Thunder Bolt who is obviously packin'"
      PRINT "            Do you want to try to take him out?"
      INPUT "                     (Y or N)  ? ", todeal$
      todeal$ = UCASE$(todeal$)
      IF todeal$ = "N" THEN
	PRINT ""
	PRINT "                  You walk away."
	GOTO 330
      END IF
      RANDOMIZE TIMER
      delshtbk% = INT(RND * 5)
      IF delshtbk% > 1 THEN
	IF uzis >= 1 THEN
	  PRINT ""
	  PRINT "      You bust out your uzi and fire"; bullets; "shots"
	  PRINT "      Right between the eyes of the Thunder Bolt!"
	  bullets = 0
	END IF
	IF guns >= 1 AND uzis <= 0 THEN
	  PRINT ""
	  PRINT "         You bust out you gun and fire 1 shot"
	  PRINT "      Right between the eyes of the Thunder Bolt!"
	  bullets = bullets - 1
	END IF
	RANDOMIZE TIMER
	wwwweed% = INT(RND * 10) + 1
	ccccrack% = INT(RND * 5) + 1
	ccccoke% = INT(RND * 2) + 1
	gggguns% = INT(RND * 2) + 1
	bbbbullets% = INT(RND * 50) + 1
	GetPress
	CLS
	PRINT ""
	PRINT " **  Picking up all of the Thunder Bolts stuff  **"
	PRINT "==================================================="
	PRINT ""
	PRINT "         The Thunder Bolt was carrying..."
	PRINT ""
	PRINT "          "; wwwweed%; "units of weed"
	PRINT "          "; ccccrack%; "units of crack"
	PRINT "          "; ccccoke%; "units of cocaine"
	PRINT "          "; gggguns%; "guns"
	PRINT "          "; bbbbullets%; "bullets"
	PRINT ""
	PRINT "               You take it all."
	weed = weed + wwwweed%
	crack = crack + ccccrack%
	coke = coke + ccccoke%
	guns = guns + gggguns%
	bullets = bullets + bbbbullets%
	GOTO 330
      END IF
      PRINT ""
      PRINT "            The dealer sees you first and"
      PRINT "             busts 5 caps in your chest!"
      PRINT ""
      damage = damage + 5
      PRINT "       You have now recieved"; damage; "gunshot wounds"
      PRINT "                  (10 and you die)"
      IF damage >= 10 THEN GOTO 40000
      GOTO 330
    END IF
  END IF
  qwe% = 15
END IF
IF qwe% = 11 THEN
  PRINT "         You find a wallet, it's loaded with cash, but it"
  PRINT "        has the Thunder Bolts symbol on it.  Will you still"
  PRINT "                   take it?   (Y or N)"
  DO
  INPUT "                                ? ", wallet$
  wallet$ = UCASE$(wallet$)
  LOOP UNTIL wallet$ = "Y" OR wallet$ = "N"
  wal% = INT(RND * 7)
  IF wallet$ = "N" THEN
    PRINT "            You leave it alone."
    GOTO 330
  END IF
  IF wal% > 4 THEN
    PRINT "      The owner of the wallet sees you and busts a cap on you,"
    damage = damage + 1
    IF damage >= 10 THEN GOTO 40000
    PRINT "    the bullet hits you in your arm, you drop the wallet and run."
    GOTO 330
  END IF
  PRINT "               Nobody sees you take the wallet."
  PRINT "             You keep the $ 10,000 that was in it."
  money = money + 10000
  GOTO 330
END IF
IF qwe% = 12 THEN
  PRINT "                 You slip on a banana Peel."
  peel% = INT(RND * 20)
  looper = 0
  DO WHILE looper < 17000
  looper = looper + 1
  LOOP
  IF peel% = 9 THEN
    PRINT ""
    PRINT "                         You die."
    PRINT ""
    GOTO 40000
  END IF
  IF peel% = 19 THEN

    PRINT ""
    PRINT "                         You die."
    PRINT ""
    GOTO 40000
  END IF
  PRINT ""
  PRINT "                        You live."
  GOTO 330
END IF
IF qwe% = 13 THEN qwe% = 18
IF qwe% = 14 THEN
  PRINT "            Weed prices quadrupal!!     SELL NOW"
  poweed = poweed * 4
  GOTO 330
END IF
IF qwe% = 15 THEN
  IF crack > 0 THEN
    PRINT "     The cops see some crack sticking out of your coat!!"
    PRINT "               They start chasing you!!"
    PRINT ""
    GetPress
    GOTO 60000
  END IF
  IF weed > 0 THEN
    PRINT "     The cops see some weed sticking out of your coat!!"
    PRINT "               They start chasing you!!"
    PRINT ""
    GetPress
    GOTO 60000
  END IF
  IF coke > 0 THEN
    PRINT "     The cops see some cocaine sticking out of your coat!!"
    PRINT "                 They start chasing you!!"
    PRINT ""
    GetPress
    GOTO 60000
  END IF
  PRINT "    The cops recognize you from a picture at the post office!!"
  PRINT "                  They start chasing you!!"
  PRINT ""
  GetPress
  GOTO 60000
END IF
IF qwe% = 16 THEN
  PRINT "  You find"; dd%; "units of "; drgtp$; " on a dead dude in the street."
  IF drgtp$ = "weed" THEN weed = (weed + dd%)
  IF drgtp$ = "crack" THEN crack = (crack + dd%)
  IF drgtp$ = "cocaine" THEN coke = (coke + dd%)
  GOTO 330
END IF
IF qwe% = 17 THEN
  brb% = INT(RND * 20)
  IF brb% > 17 THEN
    PRINT "        Half of your money is stolen from the bank."
    account = account / 2
    GOTO 330
  END IF
  PRINT "            There was an attempted bank robbery, but"
  IF brb% >= 0 AND brb% < 5 THEN
    PRINT "   The get-away car ran out of gas a block away from the bank."
  END IF
  IF brb% >= 5 AND brb% < 10 THEN
    PRINT "   The bank robbers accidentaly locked themselves in the vault."
  END IF
  IF brb% >= 10 AND brb% < 15 THEN
    PRINT "    the robber demanded all of the money in cashiers cheques."
    PRINT "         After he left, the cheques were canceled."
  END IF
  IF brb% >= 15 AND brb% < 20 THEN
    PRINT "    The bank robber got confused and demanded the cashier to,"
    PRINT ""
    PRINT "                    'Give me all your honey'"
    PRINT ""
    PRINT "     the cashier did what see was told, and gave up her honey."
  END IF
  GOTO 330
END IF
IF qwe% = 18 THEN
  girlfrnd% = INT(RND * 11)
  IF girlfrnd% = 0 THEN exgrl$ = "Wanisha"
  IF girlfrnd% = 1 THEN exgrl$ = "Quintisha"
  IF girlfrnd% = 2 THEN exgrl$ = "Sinquisha"
  IF girlfrnd% = 3 THEN exgrl$ = "Kamisha"
  IF girlfrnd% = 4 THEN exgrl$ = "Ieisha"
  IF girlfrnd% = 5 THEN exgrl$ = "Matrisha"
  IF girlfrnd% = 6 THEN exgrl$ = "Totisha"
  IF girlfrnd% = 7 THEN exgrl$ = "Nomisha"
  IF girlfrnd% = 8 THEN exgrl$ = "Sakasakisha"
  IF girlfrnd% = 9 THEN exgrl$ = "Shashisha"
  IF girlfrnd% = 10 THEN exgrl$ = "Moesha"
  PRINT "      Your Ex-girlfriend, "; exgrl$; ", demands $ 1000,"
  PRINT "           for your unpaid child support bills."
  IF money < 1000 THEN
    PRINT "                Seen as you can't afford it,"
    PRINT "                The cops start chasing you!!"
    PRINT ""
    GetPress
    GOTO 60000
  END IF
  money = money - 1000
  GOTO 330
END IF
334
PRINT "                   An addict approaches you"
PRINT ""
PRINT "             He offers you $     over market value"
PRINT "                    for all of your         "
RANDOMIZE TIMER
addictaa% = INT(RND * 5) + 1
addictbb% = addictaa% * 100          'Price over market value
LOCATE 9, 29
PRINT addictbb%
RANDOMIZE TIMER
addictcc% = INT(RND * 3)
IF addictcc% = 0 THEN addictdd$ = "Weed."
IF addictcc% = 1 THEN addictdd$ = "Crack."        'Drug type to sell
IF addictcc% = 2 THEN addictdd$ = "Cocaine."
LOCATE 10, 37
PRINT addictdd$
LOCATE 12, 25
PRINT "Will you deal?"
332
IF INKEY$ = "8" OR INKEY$ = "6" OR INKEY$ = "4" OR INKEY$ = "2" THEN GOTO 332
DO
LOCATE 13, 25
INPUT " (Y or N) ? ", addictff$
addictff$ = UCASE$(addictff$)
LOOP UNTIL addictff$ = "Y" OR addictff$ = "N"
IF addictff$ = "N" THEN PRINT "                    The addict walks away.": GOTO 330
IF addictcc% = 0 AND weed = 0 THEN PRINT "             You don't have any weed to sell!": GOTO 330
IF addictcc% = 1 AND crack = 0 THEN PRINT "             You don't have any crack to sell!": GOTO 330
IF addictcc% = 2 AND coke = 0 THEN PRINT "             You don't have any cocaine to sell!!": GOTO 330
RANDOMIZE TIMER
addictjj% = INT(RND * 5)
IF addictjj% > 0 THEN GOTO 329
PRINT "              The addict was an undercover cop!!"
PRINT "                    He starts chasing you!"
PRINT ""
GetPressc
GOTO 60000
329
IF addictcc% = 0 THEN money = money + (weed * (poweed + addictbb%)): weed = 0
IF addictcc% = 1 THEN money = money + (crack * (pocrack + addictbb%)): crack = 0
IF addictcc% = 2 THEN money = money + (coke * (pocoke + addictbb%)): coke = 0
PRINT "                   The deal goes smoothly."
330
PRINT ""
GetPressc
CLS
citylayout
IF nosave < 6 THEN
  LOCATE 13, 11
  PRINT "�"
  LOCATE 14, 11
  PRINT "�"
  LOCATE 15, 11
  PRINT "�"
END IF

370

LOCATE xm%, ym%
PRINT ""
DO
q$ = INKEY$
LOOP UNTIL q$ = "8" OR q$ = "2" OR q$ = "4" OR q$ = "6"
IF q$ = "8" THEN
  LOCATE xm%, ym%
  PRINT " "
  xm% = xm% - 1
  IF xm% = 13 AND ym% = 40 THEN GOTO 350
  IF xm% = 10 AND ym% = 19 THEN GOTO 600
  IF xm% = 10 AND ym% = 33 THEN GOTO 1000
  IF xm% = 10 AND ym% = 47 THEN GOTO 1400
  IF xm% = 10 AND ym% = 60 THEN GOTO 400
  IF xm% = 13 AND ym% > 70 AND ym% < 75 THEN LOCATE 14, 30: PRINT " Are You Sure  (y/n)": DO: rusure$ = INKEY$: LOOP UNTIL rusure$ = "y" OR rusure$ = "n": IF rusure$ = "y" THEN GOTO 999999999 ELSE xm% = 14: GOTO 350
  IF xm% = 13 AND ym% > 4 AND ym% < 9 THEN GOSUB SaveGame: GOTO 350
  IF xm% = 13 AND ym% = 4 THEN xm% = 14: GOTO 360
  IF xm% = 13 AND ym% = 9 THEN xm% = 14: GOTO 360
  IF xm% = 13 AND ym% = 75 THEN xm% = 14: GOTO 360
  IF xm% = 18 AND ym% < 65 AND ym% > 59 THEN : xm% = 19: GOTO 360
  IF xm% = 0 THEN xm% = 1: GOTO 360
  IF xm% = 13 AND ym% > 9 AND ym% < 19 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 13 AND ym% > 19 AND ym% < 33 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 13 AND ym% > 33 AND ym% < 47 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 13 AND ym% > 47 AND ym% < 60 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 13 AND ym% > 60 AND ym% < 71 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 15 AND ym% > 9 AND ym% < 21 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 15 AND ym% > 21 AND ym% < 35 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 15 AND ym% > 35 AND ym% < 65 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 15 AND ym% > 65 AND ym% < 76 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 12 AND ym% > 9 AND ym% < 19 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 12 AND ym% > 19 AND ym% < 33 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 12 AND ym% > 33 AND ym% < 47 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 12 AND ym% > 47 AND ym% < 60 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 12 AND ym% > 60 AND ym% < 70 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 16 AND ym% > 9 AND ym% < 21 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 16 AND ym% > 21 AND ym% < 35 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 16 AND ym% > 35 AND ym% < 65 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 16 AND ym% > 65 AND ym% < 76 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 11 AND ym% > 9 AND ym% < 19 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 11 AND ym% > 19 AND ym% < 33 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 11 AND ym% > 33 AND ym% < 47 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 11 AND ym% > 47 AND ym% < 60 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 11 AND ym% > 60 AND ym% < 70 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 17 AND ym% > 9 AND ym% < 21 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 17 AND ym% > 21 AND ym% < 35 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 17 AND ym% > 35 AND ym% < 65 THEN : xm% = xm% + 1: GOTO 360
  IF xm% = 17 AND ym% > 65 AND ym% < 76 THEN : xm% = xm% + 1: GOTO 360
  GOTO 360
END IF
IF q$ = "2" THEN
  LOCATE xm%, ym%
  PRINT " "
  xm% = xm% + 1
  IF xm% = 18 AND ym% = 21 THEN GOTO 800
  IF xm% = 18 AND ym% = 35 THEN GOTO 1600
  IF xm% = 20 THEN xm% = 19: GOTO 360
  IF xm% = 13 AND ym% > 9 AND ym% < 19 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 13 AND ym% > 19 AND ym% < 33 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 13 AND ym% > 33 AND ym% < 47 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 13 AND ym% > 47 AND ym% < 60 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 13 AND ym% > 60 AND ym% < 70 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 15 AND ym% > 0 AND ym% < 21 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 15 AND ym% > 21 AND ym% < 35 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 15 AND ym% > 35 AND ym% < 65 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 15 AND ym% > 65 AND ym% < 76 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 12 AND ym% > 9 AND ym% < 19 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 12 AND ym% > 19 AND ym% < 33 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 12 AND ym% > 33 AND ym% < 47 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 12 AND ym% > 47 AND ym% < 60 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 12 AND ym% > 60 AND ym% < 70 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 16 AND ym% > 9 AND ym% < 21 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 16 AND ym% > 21 AND ym% < 35 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 16 AND ym% > 35 AND ym% < 65 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 16 AND ym% > 65 AND ym% < 76 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 11 AND ym% > 9 AND ym% < 19 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 11 AND ym% > 19 AND ym% < 33 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 11 AND ym% > 33 AND ym% < 47 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 11 AND ym% > 47 AND ym% < 60 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 11 AND ym% > 60 AND ym% < 70 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 17 AND ym% > 9 AND ym% < 21 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 17 AND ym% > 21 AND ym% < 35 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 17 AND ym% > 35 AND ym% < 65 THEN : xm% = xm% - 1: GOTO 360
  IF xm% = 17 AND ym% > 65 AND ym% < 76 THEN : xm% = xm% - 1: GOTO 360
  GOTO 360
END IF
IF q$ = "4" THEN
  LOCATE xm%, ym%
  PRINT " "
  ym% = ym% - 1
  IF nosave < 6 THEN
    IF xm% = 14 AND ym% = 11 THEN ym% = 12: GOTO 360
  END IF
  IF xm% = 19 AND ym% = 59 THEN GOTO 1200
  IF ym% = 3 THEN ym% = 4: GOTO 360
  IF xm% = 18 THEN ym% = ym% + 1: GOTO 360
  IF xm% = 13 AND ym% > 9 AND ym% < 19 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 13 AND ym% > 19 AND ym% < 33 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 13 AND ym% > 33 AND ym% < 47 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 13 AND ym% > 47 AND ym% < 60 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 13 AND ym% > 60 AND ym% < 70 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 15 AND ym% > 9 AND ym% < 21 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 15 AND ym% > 21 AND ym% < 35 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 15 AND ym% > 35 AND ym% < 65 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 15 AND ym% > 65 AND ym% < 76 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 12 AND ym% > 9 AND ym% < 19 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 12 AND ym% > 19 AND ym% < 33 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 12 AND ym% > 33 AND ym% < 47 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 12 AND ym% > 47 AND ym% < 60 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 12 AND ym% > 60 AND ym% < 70 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 16 AND ym% > 9 AND ym% < 21 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 16 AND ym% > 21 AND ym% < 35 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 16 AND ym% > 35 AND ym% < 65 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 16 AND ym% > 65 AND ym% < 76 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 11 AND ym% > 9 AND ym% < 19 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 11 AND ym% > 19 AND ym% < 33 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 11 AND ym% > 33 AND ym% < 47 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 11 AND ym% > 47 AND ym% < 60 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 11 AND ym% > 60 AND ym% < 70 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 17 AND ym% > 9 AND ym% < 21 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 17 AND ym% > 21 AND ym% < 35 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 17 AND ym% > 35 AND ym% < 65 THEN : ym% = ym% + 1: GOTO 360
  IF xm% = 17 AND ym% > 65 AND ym% < 76 THEN : ym% = ym% + 1: GOTO 360
  GOTO 360
END IF
IF q$ = "6" THEN
  LOCATE xm%, ym%
  PRINT " "
  ym% = ym% + 1
  IF ym% = 76 THEN ym% = 75: GOTO 360
  IF ym% = 66 AND xm% > 14 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 13 AND ym% > 9 AND ym% < 19 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 13 AND ym% > 19 AND ym% < 33 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 13 AND ym% > 33 AND ym% < 47 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 13 AND ym% > 47 AND ym% < 60 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 13 AND ym% > 60 AND ym% < 70 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 15 AND ym% > 9 AND ym% < 21 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 15 AND ym% > 21 AND ym% < 35 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 15 AND ym% > 35 AND ym% < 65 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 15 AND ym% > 65 AND ym% < 76 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 12 AND ym% > 9 AND ym% < 19 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 12 AND ym% > 19 AND ym% < 33 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 12 AND ym% > 33 AND ym% < 47 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 12 AND ym% > 47 AND ym% < 60 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 12 AND ym% > 60 AND ym% < 70 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 16 AND ym% > 9 AND ym% < 21 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 16 AND ym% > 21 AND ym% < 35 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 16 AND ym% > 35 AND ym% < 65 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 16 AND ym% > 65 AND ym% < 76 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 11 AND ym% > 9 AND ym% < 19 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 11 AND ym% > 19 AND ym% < 33 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 11 AND ym% > 33 AND ym% < 47 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 11 AND ym% > 47 AND ym% < 60 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 11 AND ym% > 60 AND ym% < 70 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 17 AND ym% > 9 AND ym% < 21 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 17 AND ym% > 21 AND ym% < 35 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 17 AND ym% > 35 AND ym% < 65 THEN : ym% = ym% - 1: GOTO 360
  IF xm% = 17 AND ym% > 65 AND ym% < 76 THEN : ym% = ym% - 1: GOTO 360
  GOTO 360
END IF

400
store
LOCATE 8, 11
PRINT "�    Big Johnnys     �"
LOCATE 9, 11
PRINT "�    Pub on Main     �"
walkin
a = 0: DO WHILE a < 10000: a = a + 1: LOOP
bar
store
LOCATE 8, 11
PRINT "�    Big Johnnys     �"
LOCATE 9, 11
PRINT "�    Pub on Main     �"
walkout
xm% = 11
GOTO 100000

600
store
LOCATE 8, 11
PRINT "�    Big Johnnys     �"
LOCATE 9, 11
PRINT "�    Crack House     �"
walkin
a = 0: DO WHILE a < 10000: a = a + 1: LOOP
crackhouse
store
LOCATE 8, 11
PRINT "�    Big Johnnys     �"
LOCATE 9, 11
PRINT "�    Crack House     �"
walkout
xm% = 11
GOTO 100000

800
store
LOCATE 8, 11
PRINT "�    Big Johnnys     �"
LOCATE 9, 11
PRINT "�    Pick n Save     �"
walkin
a = 0: DO WHILE a < 10000: a = a + 1: LOOP
picknsave
IF bouncer = 1 THEN bouncer = 0: GOTO 40000
IF joncops = 1 THEN joncops = 0: GOTO 60000
store
LOCATE 8, 11
PRINT "�    Big Johnnys     �"
LOCATE 9, 11
PRINT "�    Pick n Save     �"
walkout
xm% = 17
GOTO 100000

1000
store
LOCATE 8, 11
PRINT "�   Little Johnnys   �"
LOCATE 9, 11
PRINT "�     Gun Shack      �"
walkin
a = 0: DO WHILE a < 10000: a = a + 1: LOOP
gunshack
store
LOCATE 8, 11
PRINT "�   Little Johnnys   �"
LOCATE 9, 11
PRINT "�     Gun Shack      �"
walkout
xm% = 11
GOTO 100000

1200 gangwar 'this is where the gang war will go when it's done
GOTO 100000
1400
store
LOCATE 8, 11
PRINT "�    Big Johnny's    �"
LOCATE 9, 11
PRINT "�     Info Booth     �"
walkin
a = 0: DO WHILE a < 10000: a = a + 1: LOOP
infobooth
store
LOCATE 8, 11
PRINT "�    Big Johnny's    �"
LOCATE 9, 11
PRINT "�     Info Booth     �"
walkout
xm% = 11
GOTO 100000

1600
store
LOCATE 8, 11
PRINT "�     Big Johnnys    �"
LOCATE 9, 11
PRINT "�  Saving's and Loan �"
walkin
a = 0: DO WHILE a < 10000: a = a + 1: LOOP
bank
store
LOCATE 8, 11
PRINT "�     Big Johnnys    �"
LOCATE 9, 11
PRINT "�  Saving's and Loan �"
walkout
xm% = 17
GOTO 100000

40000
lives = lives - 1
damage = 0
GetPress
IF lives <= 0 THEN GOTO 40001
CLS
PRINT ""
PRINT "        **  The Game's not over yet!  **"
PRINT "================================================"
PRINT ""
PRINT "         You still have"; lives; "lives left!!"
GetPress
GOTO 100000
40001
CLS
PRINT ""
PRINT "   **  Sorry G, Your pimpin' dayz are over!  **"
PRINT "=================================================="
PRINT ""
PRINT "        I don't know what happened, FOLKS!"
PRINT "             but ya'll is dead, PIMP"
PRINT ""
PRINT "              Don't try to continue,"
PRINT "  I deleted the last game you saved, hehehe >:)  "
PRINT "      Have fun starting from scrach, unless"
PRINT "      You have another game saved somewhere."
IF filename$ = "" THEN GOTO 40002
KILL filename$
40002
GetPress
CLS
42000
CLS
looper = 0

DO WHILE looper < 275
PRINT ""
PRINT "    ** Game Over **** Game Over **** Game Over **** Game Over **    "
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
LOCATE 3, 1
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
DO
ycoord% = INT(RND * 22)
LOOP UNTIL ycoord% > 5
DO
xcoord% = INT(RND * 60)
LOOP UNTIL xcoord% > 2
LOCATE ycoord%, xcoord%
hgh% = INT(RND * 16)
COLOR hgh%
PRINT " GAME OVER"
LOCATE 3, 1
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
xline% = 2
DO
LOCATE ycoord%, xline%
PRINT " "
xline% = xline% + 1
LOOP UNTIL xline% = xcoord%
xlineb% = xcoord% + 10
DO
LOCATE ycoord%, xlineb%
PRINT " "
xlineb% = xlineb% + 1
LOOP UNTIL xlineb% = 76
LOCATE 3, 1
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
LOCATE 1, 1
looper = looper + 1
LOOP
CLS
y = 1
x = 1
909090
LOCATE y, x: PRINT "                               "
LOCATE y + 1, x: PRINT "  GGGGG   AAA   M     M  EEEEE "
LOCATE y + 2, x: PRINT " G       A   A  M M M M  E     "
LOCATE y + 3, x: PRINT " G  GGG  AAAAA  M  M  M  EEE   "
LOCATE y + 4, x: PRINT " G    G  A   A  M     M  E     "
LOCATE y + 5, x: PRINT "  GGGG   A   A  M     M  EEEEE "
LOCATE y + 6, x: PRINT "                               "
LOCATE y + 7, x: PRINT "  OOOO   V   V   EEEEE   RRRR  "
LOCATE y + 8, x: PRINT " O    O  V   V   E       R   R "
LOCATE y + 9, x: PRINT " O    O  V   V   EEE     RRRR  "
LOCATE y + 10, x: PRINT " O    O   V V    E       R  R  "
LOCATE y + 11, x: PRINT "  OOOO     V     EEEEE   R   R "
LOCATE y + 12, x: PRINT "                               "
ddd$ = INKEY$: IF ddd$ <> "" THEN END
looper = 0
DO WHILE looper < 700
looper = looper + 1
LOOP
IF x > 47 THEN gdk = 1: RANDOMIZE TIMER: hgh% = INT(RND * 15) + 1: COLOR hgh%
IF x <= 1 THEN gdk = 0: RANDOMIZE TIMER: hgh% = INT(RND * 15) + 1: COLOR hgh%
IF y <= 1 THEN gdkb = 0: RANDOMIZE TIMER: hgh% = INT(RND * 15) + 1: COLOR hgh%
IF y > 11 THEN gdkb = 1: RANDOMIZE TIMER: hgh% = INT(RND * 15) + 1: COLOR hgh%
IF gdkb = 1 THEN y = y - 1
IF gdkb = 0 THEN y = y + 1
IF gdk = 1 THEN x = x - 1
IF gdk = 0 THEN x = x + 1
GOTO 909090



60000
copchase
IF damage >= 10 THEN GOTO 40000
IF rechase = 1 THEN GOTO 60000
GOTO 100000





100000
nosave = nosave + 1
day% = day% + 1
account = account * 1.01      'all this happens at the end of the day
loan = loan * 1.05            'account and loan wont be integers
thunder = thunder * 1.1
thunguns = thunguns + 1       ' if you want to display them later
thunbullets = thunbullets + 50   ' use int(variable)
thunuzis = (thunuzis * 1.1)
thunmislaunch = (thunmislaunch * 1.05)
thunmissiles = (thunmissiles * 1.1)
thungrenades = thungrenades + 1
GOTO 350


999999999
IF nosave < 6 THEN
  CLS
  PRINT ""
  PRINT "      **  Save Your Game?  **"
  PRINT "==================================="
  PRINT ""
  PRINT "  Sorry, you can't save your game."
  PRINT "    You didn't play for 5 days."
  PRINT ""
  PRINT "   Would you like to go back and"
  PRINT "play a few more days so you can Save"
  PRINT " your game? if you don't, you will"
  PRINT "have restart your game from scrach"
  PRINT "because the file you are playing now"
  PRINT "has been deleted to prevent cheating."
  DO
  INPUT "         (Y or N) ? ", goback$
  goback$ = UCASE$(goback$)
  LOOP UNTIL goback$ = "Y" OR goback$ = "N"
  IF goback$ = "Y" THEN GOTO 350
  GOTO 42000
END IF
CLS
PRINT ""
PRINT "      **  Save Your Game?  **"
PRINT "==================================="
PRINT ""
PRINT " Would you like to save your game"
PRINT "          Before Quiting?"
INPUT "           (Y or N) ", douwnt$
douwnt$ = UCASE$(douwnt$)
IF douwnt$ = "Y" THEN GOSUB SaveGame
GOTO 42000

50000
casino
GOTO 100000

SaveGame:
CLS
PRINT ""
PRINT "             **  Save your Game  **"
PRINT "================================================"
PRINT ""
PRINT "What name would you like to save your game as?"
PRINT "(You will need to remember it to load it later)"
INPUT "Filename"; filename$
OPEN filename$ FOR OUTPUT AS 1
PRINT #1, uzis
PRINT #1, guns
PRINT #1, bullets
PRINT #1, steve%
PRINT #1, crack
PRINT #1, weed
PRINT #1, coke
PRINT #1, money
PRINT #1, day%
PRINT #1, account
PRINT #1, loan
PRINT #1, members
PRINT #1, thunder
PRINT #1, lives
PRINT #1, name$
PRINT #1, gngname$
PRINT #1, freegun
PRINT #1, freecrk
PRINT #1, robert
PRINT #1, mislaunch
PRINT #1, missiles
PRINT #1, grenades
PRINT #1, thunguns
PRINT #1, thunbullets
PRINT #1, thunuzis
PRINT #1, thunmislaunch
PRINT #1, thunmissiles
PRINT #1, thungrenades
PRINT #1, id
CLOSE #1
PRINT "Your Game has been saved as '"; filename$; "'"
PRINT "Save will now be disabled for 5 days to"
PRINT "           prevent cheating"
PRINT "Press a key and the game will resume. "
GetPressb
xm% = 14
ym% = 12
nosave = 1
RETURN

Handler:
  SELECT CASE ERR
    CASE 53
      PRINT "That file doesn't exist!!"
      GetPress
      RESUME wtsthenm
    CASE ELSE
      PRINT ERR
      END
  END SELECT

cheapskate:
  SELECT CASE ERR
    CASE 53
      CLS
      PRINT ""
      PRINT "          **  You are cheap!!  **"
      PRINT "==========================================="
      PRINT ""
      PRINT "   This program has determined that this"
      PRINT "    game has been illegally duplicated"
      PRINT "     and redistributed. If you really"
      PRINT "    want to play this game, buy a copy"
      PRINT "     of it from Mike Kristopeit for $5"
      PRINT ""
      PRINT "                 Thank You"
      END
    CASE ELSE
      PRINT "error  "; ERR
      END
  END SELECT

SUB bank
1601
CLS
PRINT ""
PRINT "     **  Big Johnnys Savings and Loan  **"
PRINT "=============================================="
PRINT ""
PRINT "          Would you like to ..."
PRINT ""
PRINT "    [1] Make a deposit into savings"
PRINT "    [2] Take out a loan"
PRINT "    [3] Withdrawl from savings"
PRINT "    [4] Repay part, or all, of loan"
PRINT "    [5] Leave the bank"
PRINT "   (answer using number)"
notwo:
IF INKEY$ = "2" THEN GOTO notwo
DO
INPUT "    ? ", sl%
IF sl% = 1 THEN GOTO 1610
IF sl% = 2 THEN GOTO 1630
IF sl% = 3 THEN GOTO 1650
IF sl% = 4 THEN GOTO 1670
IF sl% = 5 THEN GOTO leavesl
LOOP UNTIL sl% > 0 AND sl% < 6
1610 CLS
PRINT ""
PRINT "     **  Make a deposit into savings  **"
PRINT "============================================="
PRINT ""
PRINT "            You currantly have ..."
PRINT ""
PRINT "        $"; money; "in your wallet"
PRINT "        $"; INT(account); "in your account"
PRINT ""
INPUT "     How much would you like to deposit?  $ ", dep
IF dep < 0 THEN PRINT "      It has to be positive, idiot!": GetPress: GOTO 1610
IF dep > money THEN PRINT "     You don't have that much.": GetPress: GOTO 1610
money = (money - dep)
account = (account + dep)
CLS
PRINT ""
PRINT "     **  Make a deposit into savings  **"
PRINT "============================================="
PRINT ""
PRINT "               You now have ...   "
PRINT ""
PRINT "        $"; money; "in your wallet"
PRINT "        $"; INT(account); "in your account"
PRINT ""
GetPress
GOTO 1601
1630
CLS
PRINT ""
PRINT "             **  Take out a loan  **"
PRINT "================================================="
PRINT ""
PRINT "   Here is your currant financial status"
PRINT ""
PRINT "    You have $"; money; "in your wallet"
PRINT "    You owe $"; INT(loan); "to the loanshark"
PRINT ""
INPUT "  How much would you like to borrow?  $ ", burw
IF burw < 0 THEN PRINT "    It has to be positive, Idiot!!": GetPress: GOTO 1630
IF burw > 5000 THEN PRINT "  You can only borrow $ 5000 at a time.": GetPress: GOTO 1630
money = money + burw
loan = loan + burw
CLS
PRINT ""
PRINT "          **  Updated Loan Status  **"
PRINT "================================================"
PRINT ""
PRINT "    You now have $"; money; "in your wallet"
PRINT "    and owe $"; INT(loan); "to the loanshark"
GetPress
GOTO 1601
1650
CLS
PRINT ""
PRINT "             **   Withdrawl from Savings   **"
PRINT "=========================================================="
PRINT ""
PRINT " You currantly have $"; INT(account); "in you savings account"
PRINT ""
INPUT " How much would you like to withdrawl?  $ ", wthdrwl
IF wthdrwl < 0 THEN PRINT "   It has to be positive, Idiot!!": GetPress: GOTO 1650
IF wthdrwl > account THEN PRINT "   You don't have that much!!": GetPress: GOTO 1650
account = account - wthdrwl
money = money + wthdrwl
CLS
PRINT ""
PRINT "             **   Withdrawl from Savings   **"
PRINT "=========================================================="
PRINT ""
PRINT "  You now have $"; INT(account); "in your savings account"
PRINT "           and $"; money; "in your wallet"
GetPress
GOTO 1601
1670
CLS
PRINT ""
PRINT "                **  Repay Loan  **"
PRINT "=================================================="
PRINT ""
PRINT "     You owe $"; INT(loan); "to the loanshark"
PRINT "    and have $"; money; "in your wallet"
PRINT ""
INPUT "    How much would you like to repay ?  $ ", rpl
IF rpl > loan THEN PRINT "    You don't owe that much!!": GetPress: GOTO 1670
IF rpl < 0 THEN PRINT "    it has to be positive , Idiot !!": GetPress: GOTO 1670
IF rpl > money THEN PRINT "   You dont have that much!!": GetPress: GOTO 1670
loan = loan - rpl
money = money - rpl
CLS
PRINT ""
PRINT "            **  Updated Loan Status **"
PRINT "=================================================="
PRINT ""
PRINT "  You now owe $"; INT(loan); "to the loanshark"
PRINT "     and have $"; money; "in your wallet"
GetPress
GOTO 1601
leavesl:

END SUB

SUB bar
RANDOMIZE TIMER
drunk% = INT(RND * 30)
IF drunk% = 15 AND drunkb% = 1 THEN GOTO 401
IF drunk% = 15 THEN GOTO 490

401
CLS
PRINT ""
PRINT "            **    Big Johnnys Pub on Main   **"
PRINT "=========================================================="
PRINT ""
PRINT "            Welcome to Big Johnnys Pub on main."
PRINT ""
IF steve% = 1 THEN
  PRINT ""
  PRINT "        Nice to see ya again "; name$; ", I'll get your menu."
  GOTO 445
END IF
410
LOCATE 7, 1
PRINT "                  What'll it be chump?"
IF INKEY$ = "8" THEN GOTO 410
INPUT "                       ? ", D$
D$ = UCASE$(D$)
IF D$ = "BEER" THEN GOTO 420
IF D$ = "WHADDA YA GOT?" OR D$ = "WHAT DO YOU HAVE?" OR D$ = "WHAT DO YOU GOT?" THEN GOTO 430
IF D$ = "WHADDA YA GOT" OR D$ = "WHAT DO YOU HAVE" OR D$ = "WHAT DO YOU GOT" THEN GOTO 430
415
PRINT ""
PRINT "           Sorry pal, we only serve our friends."
PRINT "                You goin' to have to leave"
GetPress
GOTO leavebar
420 CLS
IF name$ = "" THEN GOTO 421
PRINT ""
PRINT "            **    Big Johnnys Pub on Main   **"
PRINT "=========================================================="
PRINT ""
PRINT "                  How you doin'"; name$
PRINT "                   I'll get your beer."
GOTO 422
421
PRINT ""
PRINT "            **    Big Johnnys Pub on Main   **"
PRINT "=========================================================="
PRINT ""
PRINT "       I haven't ever seen you around here before."
INPUT "             What's your name? ", name$
PRINT ""
PRINT "     Well, how ya doin' "; name$; ", my name's Steve."
PRINT "             Your welcome here any time."
steve% = 1
422
GetPress
PRINT ""
PRINT "Here's that beer you wanted, its on the house, see ya around."
GetPress
GOTO leavebar
430 PRINT ""
PRINT "             We only serve Beer."
PRINT "          so, What'll it be chump?"
INPUT "               ? ", D$
D$ = UCASE$(D$)
IF D$ = "BEER" OR D$ = "A BEER" THEN GOTO 420
IF D$ = "CAN I PLEASE SEE A MENU" OR D$ = "MAY I PLEASE SEE A MENU" OR D$ = "MAY I PLEASE SEE A MENU?" OR D$ = "CAN I PLEASE SEE A MENU?" THEN GOTO 440
IF D$ = "CAN I SEE A MENU" OR D$ = "MAY I SEE A MENU" OR D$ = "MAY I SEE A MENU?" OR D$ = "CAN I SEE A MENU?" THEN GOTO 440
GOTO 415
440 PRINT ""
PRINT "           Well here's a menu"
445
PRINT ""
PRINT "     Press a key to look at the menu"
GetPressb
450 CLS
PRINT ""
PRINT "  **   Big Johnny's Pub on Main   **"
PRINT "======================================"
PRINT ""
PRINT "   [1]  Johnny burger     $ 1.50"
PRINT "   [2]  cheeseburger      $ 2.00"
PRINT "   [3]  soup of the day   $ 1.75"
PRINT "   [4]  Arch Deluxe       $ 2.39"
PRINT "   [5]  Happy Meal        $ 250.00"
PRINT ""
PRINT "   [6]  Leave"
PRINT "(answer using number)"
DO
INPUT e%
LOOP UNTIL e% > 0 AND e% < 7
IF e% < 5 THEN
  PRINT "   Sorry were all out."     'add different stuff to menu that you can buy that will let you be hired as a dealer from the bar
  GetPress
  GOTO 450
END IF
IF e% > 5 THEN GOTO leavebar
460 PRINT "Do you want a beer with that?"
INPUT "          ? ", F$
F$ = UCASE$(F$)
IF F$ = "I DON'T DRINK" THEN GOTO 480
470
PRINT " Here's your meal, that'll be $250, chump!!"
PRINT " Come back when you know what you are doing!"
money = (money - 250)
PRINT ""
PRINT ""
GetPress
GOTO leavebar
480 PRINT ""
PRINT "What DO you want?"
INPUT g$
g$ = UCASE$(g$)
IF g$ = "A GUN" AND freegun = 1 THEN
  PRINT "I already hooked you up once! go away!"
  GetPress
  GOTO leavebar
END IF
IF g$ = "A GUN" THEN
  PRINT "OK I think I can handle that."
  guns = (guns + 1)
  freegun = 1
END IF
IF g$ = "CRACK" AND freecrk = 1 THEN
  PRINT "I already hooked you up once! go away!"
  GetPress
  GOTO leavebar
END IF
IF g$ = "CRACK" THEN
  PRINT "OK I think I can handle that."
  crack = (crack + 5)
  freecrk = 1
END IF
PRINT ""
PRINT "Wait 1 second, I gotta go get it out of the back room"
IF g$ <> "CRACK" AND g$ <> "A GUN" THEN
  PRINT "    Sorry, we don't have any more of those left."
  PRINT "     Maybe you could come back later and check."
  GetPress
  GOTO leavebar
END IF

' add a thing where you can go into the back room and kill everyone

looper = 1
DO WHILE looper < 18500
looper = (looper + 1)
LOOP
CLS
PRINT ""
PRINT "            **    Big Johnnys Pub on Main   **"
PRINT "=========================================================="
PRINT ""
PRINT "  Here you go, and thanks for comin' to Big Johnny's."
PRINT ""
GetPress
GOTO leavebar
490 CLS
PRINT ""
PRINT "            **    Big Johnnys Pub on Main   **"
PRINT "=========================================================="
PRINT ""
PRINT "     A drunk stumbles up to you and asks for a drink."
PRINT "      "
PRINT "     [1] Buy him a shot"
PRINT "     [2] Tell him to get the hell away"
PRINT "     (answer with number)  "
DO
INPUT "          ? ", drunk%
LOOP UNTIL drunk% = 1 OR drunk% = 2
IF drunk% = 1 THEN GOTO 491
IF drunk% = 2 THEN
  PRINT "                 GET THE HELL AWAY!"
  PRINT "     The drunk walks away. You decide to leave too."
  GetPress
  GOTO leavebar
END IF
491 CLS
drunkb% = 1
PRINT ""
PRINT "            **    Big Johnnys Pub on Main   **"
PRINT "=========================================================="
PRINT ""
PRINT "   The drunk thanks you and for your generosity gives you"
PRINT " his only possesion, a fake ID. You thank the drunk but "
PRINT " privately wonder, Where will I ever use a fake ID??"
id = 1
GetPress
leavebar:
END SUB

SUB casino
pickgame:
CLS
PRINT ""
PRINT "           **    CASINO    **"
PRINT "========================================"
PRINT ""
PRINT "         Choose a game to play"
PRINT ""
PRINT "            [1] Slots"
PRINT "            [2] Video Poker"
PRINT "            [3] Roulette"
PRINT "            [4] Leave"
PRINT ""
PRINT "    (answer using number)"
DO
INPUT "           ? ", W%
IF W% = 1 THEN GOTO slots
IF W% = 2 THEN GOTO poker
IF W% = 3 THEN GOTO roulette
IF W% = 4 THEN GOTO 575757
LOOP UNTIL W% > 0 AND W% < 6
slots:
CLS
PRINT "         **  Slots  **"
PRINT "==============================="
PRINT ""
PRINT "   �����Ŀ �����Ŀ �����Ŀ"
PRINT "   �     � �     � �     �"
PRINT "   �     � �     � �     �"
PRINT "   �     � �     � �     �"
PRINT "   ������� ������� �������"
PRINT "    "
PRINT "      Bets are $100 and "
PRINT "three of anything wins $1000"
PRINT ""
PRINT "    You have $"; money
PRINT ""
PRINT "   Press [1] to Spin"
PRINT "   Press [2] to Leave "
PRINT ""
PRINT " (answer using number)"
DO
INPUT "        ? ", s%
IF s% = 1 THEN GOTO 50200
IF s% = 2 THEN GOTO pickgame
LOOP UNTIL s% = 1 OR s% = 2
50200
IF money < 100 THEN PRINT "": PRINT "You Don't have enough money to play.": GetPress: GOTO slots
CLS
money = (money - 100)
PRINT "         **  Slots  **"
PRINT "==============================="
PRINT ""
PRINT "   �����Ŀ �����Ŀ �����Ŀ"
PRINT "   �     � �     � �     �"
PRINT "   �     � �     � �     �"
PRINT "   �     � �     � �     �"
PRINT "   ������� ������� �������"
PRINT ""
PRINT ""
PRINT "    "
RANDOMIZE TIMER

slotstop% = 0
DO WHILE slotstop% < 5
LOCATE 6, 7: COLOR 4: PRINT "*"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
LOCATE 6, 7: COLOR 2: PRINT "O"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
LOCATE 6, 7: COLOR 1: PRINT "$"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
slotstop% = slotstop% + 1
LOOP

slots% = INT(RND * 3)
IF slots% = 0 THEN slots$ = "*": COLOR 4
IF slots% = 1 THEN slots$ = "O": COLOR 2
IF slots% = 2 THEN slots$ = "$": COLOR 1
LOCATE 6, 7: PRINT slots$

slotstop% = 0
DO WHILE slotstop% < 5
LOCATE 6, 15: COLOR 4: PRINT "*"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
LOCATE 6, 15: COLOR 2: PRINT "O"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
LOCATE 6, 15: COLOR 1: PRINT "$"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
slotstop% = slotstop% + 1
LOOP

RANDOMIZE TIMER
slots1% = INT(RND * 3)
IF slots1% = 0 THEN slots1$ = "*": COLOR 4
IF slots1% = 1 THEN slots1$ = "O": COLOR 2
IF slots1% = 2 THEN slots1$ = "$": COLOR 1
LOCATE 6, 15: PRINT slots1$

slotstop% = 0
DO WHILE slotstop% < 5
LOCATE 6, 23: COLOR 4: PRINT "*"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
LOCATE 6, 23: COLOR 2: PRINT "O"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
LOCATE 6, 23: COLOR 1: PRINT "$"
a = 0: DO WHILE a < 500: a = a + 1: LOOP
slotstop% = slotstop% + 1
LOOP

RANDOMIZE TIMER
slots2% = INT(RND * 3)
IF slots2% = 0 THEN slots2$ = "*": COLOR 4
IF slots2% = 1 THEN slots2$ = "O": COLOR 2
IF slots2% = 2 THEN slots2$ = "$": COLOR 1
LOCATE 6, 23: PRINT slots2$
COLOR 7
IF slots% = slots1% AND slots% = slots2% THEN
  money = (money + 1000)
  LOCATE 10, 1
  PRINT "You Won!!  You get $1000 !!"
  GetPress
  GOTO slots
END IF
LOCATE 10, 1
PRINT " You lost you bet of $100"
GetPress
GOTO slots
poker:
bet = 0
poker2:
RANDOMIZE TIMER
CLS
PRINT ""
PRINT "                  **    Video Poker    **"
PRINT "==========================================================="
PRINT ""
PRINT "               Your current bet is $"; bet
PRINT ""
PRINT "                    [1]  Bet (required)"
PRINT "                    [2]  View Payouts"
PRINT "                    [3]  Deal Cards"
PRINT "                    [4]  Play different game"
PRINT "             (answer using number)"
DO
INPUT "                    ? ", vidpoker%
LOOP UNTIL vidpoker% > 0 AND vidpoker% < 5
placebet:
IF vidpoker% = 1 THEN
  CLS
  PRINT ""
  PRINT "                  **    Video Poker    **"
  PRINT "==========================================================="
  PRINT ""
  PRINT "     Maximum bet of $ 1000"
  PRINT "     You only have $"; money
  INPUT "     How much would you like to bet?  $", bet
  IF bet > money THEN PRINT "": PRINT "     You don't have that much.": bet = 0: GetPress: GOTO placebet
  IF bet > 1000 THEN PRINT "    That is over the maximum bet.": bet = 0: GetPress: GOTO placebet
  GOTO poker2
END IF


IF vidpoker% = 2 THEN
  CLS
  PRINT "                  **    Video Poker    **"
  PRINT "==========================================================="
  PRINT ""
  PRINT "               Payouts"
  IF bet = 0 THEN PRINT "": PRINT "       You must place a bet first.": GetPress: GOTO poker2
  PRINT ""
  PRINT "   Five of a kind ... $"; (bet * 1000)
  PRINT "   Royal Flush ...... $"; (bet * 400)
  PRINT "   Straight Flush ... $"; (bet * 200)
  PRINT "   Four of a kind ... $"; (bet * 100)
  PRINT "   Full House ....... $"; (bet * 30)
  PRINT "   Flush ............ $"; (bet * 20)
  PRINT "   Straight ......... $"; (bet * 10)
  PRINT "   Three of a kind .. $"; (bet * 5)
  PRINT "   Two Pair ......... $"; (bet * 3)
  PRINT "   Jacks or better .. $"; bet
  GetPress
  GOTO poker2
END IF
IF vidpoker% = 4 THEN GOTO pickgame

IF bet = 0 THEN
  CLS
  PRINT ""
  PRINT "                  **    Video Poker    **"
  PRINT "==========================================================="
  PRINT ""
  PRINT "                You Must Place a bet first."
  GetPress
  GOTO poker2
END IF

pkrdeal:
COLOR 7, 0
CLS
PRINT ""
PRINT "                  **    Video Poker    **"
PRINT "==========================================================="
PRINT "                      (Aces are high)"
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "           1        2        3        4        5"
PRINT ""
PRINT "       Type the number of the cards you want to Hold"
PRINT "                   Then [Space] to deal"
FOR dealcard# = 1 TO 7000: NEXT dealcard#
acard% = INT(RND * 13)
ast% = INT(RND * 4)
IF ast% = 0 THEN acardst$ = ""
IF ast% = 1 THEN acardst$ = ""
IF ast% = 2 THEN acardst$ = ""
IF ast% = 3 THEN acardst$ = ""
bcard% = INT(RND * 13)
bst% = INT(RND * 4)
IF bst% = 0 THEN bcardst$ = ""
IF bst% = 1 THEN bcardst$ = ""
IF bst% = 2 THEN bcardst$ = ""
IF bst% = 3 THEN bcardst$ = ""
ccard% = INT(RND * 13)
cst% = INT(RND * 4)
IF cst% = 0 THEN ccardst$ = ""
IF cst% = 1 THEN ccardst$ = ""
IF cst% = 2 THEN ccardst$ = ""
IF cst% = 3 THEN ccardst$ = ""
dcard% = INT(RND * 13)
dst% = INT(RND * 4)
IF dst% = 0 THEN dcardst$ = ""
IF dst% = 1 THEN dcardst$ = ""
IF dst% = 2 THEN dcardst$ = ""
IF dst% = 3 THEN dcardst$ = ""
ecard% = INT(RND * 13)
est% = INT(RND * 4)
IF est% = 0 THEN ecardst$ = ""
IF est% = 1 THEN ecardst$ = ""
IF est% = 2 THEN ecardst$ = ""
IF est% = 3 THEN ecardst$ = ""

dealem1:
IF acard% = 0 THEN acard$ = "2"
IF acard% = 1 THEN acard$ = "3"
IF acard% = 2 THEN acard$ = "4"
IF acard% = 3 THEN acard$ = "5"
IF acard% = 4 THEN acard$ = "6"
IF acard% = 5 THEN acard$ = "7"
IF acard% = 6 THEN acard$ = "8"
IF acard% = 7 THEN acard$ = "9"
IF acard% = 8 THEN acard$ = "10"
IF acard% = 9 THEN acard$ = "J"
IF acard% = 10 THEN acard$ = "Q"
IF acard% = 11 THEN acard$ = "K"
IF acard% = 12 THEN acard$ = "A"

IF bcard% = 0 THEN bcard$ = "2"
IF bcard% = 1 THEN bcard$ = "3"
IF bcard% = 2 THEN bcard$ = "4"
IF bcard% = 3 THEN bcard$ = "5"
IF bcard% = 4 THEN bcard$ = "6"
IF bcard% = 5 THEN bcard$ = "7"
IF bcard% = 6 THEN bcard$ = "8"
IF bcard% = 7 THEN bcard$ = "9"
IF bcard% = 8 THEN bcard$ = "10"
IF bcard% = 9 THEN bcard$ = "J"
IF bcard% = 10 THEN bcard$ = "Q"
IF bcard% = 11 THEN bcard$ = "K"
IF bcard% = 12 THEN bcard$ = "A"

IF ccard% = 0 THEN ccard$ = "2"
IF ccard% = 1 THEN ccard$ = "3"
IF ccard% = 2 THEN ccard$ = "4"
IF ccard% = 3 THEN ccard$ = "5"
IF ccard% = 4 THEN ccard$ = "6"
IF ccard% = 5 THEN ccard$ = "7"
IF ccard% = 6 THEN ccard$ = "8"
IF ccard% = 7 THEN ccard$ = "9"
IF ccard% = 8 THEN ccard$ = "10"
IF ccard% = 9 THEN ccard$ = "J"
IF ccard% = 10 THEN ccard$ = "Q"
IF ccard% = 11 THEN ccard$ = "K"
IF ccard% = 12 THEN ccard$ = "A"

IF dcard% = 0 THEN dcard$ = "2"
IF dcard% = 1 THEN dcard$ = "3"
IF dcard% = 2 THEN dcard$ = "4"
IF dcard% = 3 THEN dcard$ = "5"
IF dcard% = 4 THEN dcard$ = "6"
IF dcard% = 5 THEN dcard$ = "7"
IF dcard% = 6 THEN dcard$ = "8"
IF dcard% = 7 THEN dcard$ = "9"
IF dcard% = 8 THEN dcard$ = "10"
IF dcard% = 9 THEN dcard$ = "J"
IF dcard% = 10 THEN dcard$ = "Q"
IF dcard% = 11 THEN dcard$ = "K"
IF dcard% = 12 THEN dcard$ = "A"

IF ecard% = 0 THEN ecard$ = "2"
IF ecard% = 1 THEN ecard$ = "3"
IF ecard% = 2 THEN ecard$ = "4"
IF ecard% = 3 THEN ecard$ = "5"
IF ecard% = 4 THEN ecard$ = "6"
IF ecard% = 5 THEN ecard$ = "7"
IF ecard% = 6 THEN ecard$ = "8"
IF ecard% = 7 THEN ecard$ = "9"
IF ecard% = 8 THEN ecard$ = "10"
IF ecard% = 9 THEN ecard$ = "J"
IF ecard% = 10 THEN ecard$ = "Q"
IF ecard% = 11 THEN ecard$ = "K"
IF ecard% = 12 THEN ecard$ = "A"

'displays the cards

COLOR 7, 0
LOCATE 5, 9
PRINT "�������"
LOCATE 6, 9
PRINT "�������"
LOCATE 7, 9
PRINT "�������"
LOCATE 8, 9
PRINT "�������"
LOCATE 9, 9
PRINT "�������"
IF ast% < 2 THEN COLOR 4, 15
IF ast% > 1 THEN COLOR 0, 15
LOCATE 6, 10
PRINT acard$
IF acard$ = "10" THEN LOCATE 8, 13: PRINT acard$:  ELSE LOCATE 8, 14: PRINT acard$
LOCATE 7, 12
PRINT acardst$
FOR dealcard# = 1 TO 7000: NEXT dealcard#

COLOR 7, 0
LOCATE 5, 18
PRINT "�������"
LOCATE 6, 18
PRINT "�������"
LOCATE 7, 18
PRINT "�������"
LOCATE 8, 18
PRINT "�������"
LOCATE 9, 18
PRINT "�������"
IF bst% < 2 THEN COLOR 4, 15
IF bst% > 1 THEN COLOR 0, 15
LOCATE 6, 19
PRINT bcard$
IF bcard$ = "10" THEN LOCATE 8, 22: PRINT bcard$:  ELSE LOCATE 8, 23: PRINT bcard$
LOCATE 7, 21
PRINT bcardst$
FOR dealcard# = 1 TO 7000: NEXT dealcard#

COLOR 7, 0
LOCATE 5, 27
PRINT "�������"
LOCATE 6, 27
PRINT "�������"
LOCATE 7, 27
PRINT "�������"
LOCATE 8, 27
PRINT "�������"
LOCATE 9, 27
PRINT "�������"
IF cst% < 2 THEN COLOR 4, 15
IF cst% > 1 THEN COLOR 0, 15
LOCATE 6, 28
PRINT ccard$
IF ccard$ = "10" THEN LOCATE 8, 31: PRINT ccard$:  ELSE LOCATE 8, 32: PRINT ccard$
LOCATE 7, 30
PRINT ccardst$
FOR dealcard# = 1 TO 7000: NEXT dealcard#

COLOR 7, 0
LOCATE 5, 36
PRINT "�������"
LOCATE 6, 36
PRINT "�������"
LOCATE 7, 36
PRINT "�������"
LOCATE 8, 36
PRINT "�������"
LOCATE 9, 36
PRINT "�������"
IF dst% < 2 THEN COLOR 4, 15
IF dst% > 1 THEN COLOR 0, 15
LOCATE 6, 37
PRINT dcard$
IF dcard$ = "10" THEN LOCATE 8, 40: PRINT dcard$:  ELSE LOCATE 8, 41: PRINT dcard$
LOCATE 7, 39
PRINT dcardst$
FOR dealcard# = 1 TO 7000: NEXT dealcard#

COLOR 7, 0
LOCATE 5, 45
PRINT "�������"
LOCATE 6, 45
PRINT "�������"
LOCATE 7, 45
PRINT "�������"
LOCATE 8, 45
PRINT "�������"
LOCATE 9, 45
PRINT "�������"
IF est% < 2 THEN COLOR 4, 15
IF est% > 1 THEN COLOR 0, 15
LOCATE 6, 46
PRINT ecard$
IF ecard$ = "10" THEN LOCATE 8, 49: PRINT ecard$:  ELSE LOCATE 8, 50: PRINT ecard$
LOCATE 7, 48
PRINT ecardst$

keepa$ = "no"
keepb$ = "no"
keepc$ = "no"
keepd$ = "no"
keepe$ = "no"


DO
holdcard$ = INKEY$
IF holdcard$ = CHR$(49) THEN
 IF keepa$ = "yes" THEN
  LOCATE 10, 9
  COLOR 7, 0
  PRINT "   1   "
  keepa$ = "no"
  ELSE
   LOCATE 10, 9
   COLOR 4, 0
   PRINT "[HELD]"
   keepa$ = "yes"
 END IF
END IF

IF holdcard$ = CHR$(50) THEN
 IF keepb$ = "yes" THEN
  LOCATE 10, 18
  COLOR 7, 0
  PRINT "   2   "
  keepb$ = "no"
  ELSE
   LOCATE 10, 18
   COLOR 4, 0
   PRINT "[HELD]"
   keepb$ = "yes"
 END IF
END IF

IF holdcard$ = CHR$(51) THEN
 IF keepc$ = "yes" THEN
  LOCATE 10, 27
  COLOR 7, 0
  PRINT "   3   "
  keepc$ = "no"
  ELSE
   LOCATE 10, 27
   COLOR 4, 0
   PRINT "[HELD]"
   keepc$ = "yes"
 END IF
END IF

IF holdcard$ = CHR$(52) THEN
 IF keepd$ = "yes" THEN
  LOCATE 10, 36
  COLOR 7, 0
  PRINT "   4   "
  keepd$ = "no"
  ELSE
   LOCATE 10, 36
   COLOR 4, 0
   PRINT "[HELD]"
   keepd$ = "yes"
 END IF
END IF

IF holdcard$ = CHR$(53) THEN
 IF keepe$ = "yes" THEN
  LOCATE 10, 45
  COLOR 7, 0
  PRINT "   5   "
  keepe$ = "no"
  ELSE
   LOCATE 10, 45
   COLOR 4, 0
   PRINT "[HELD]"
   keepe$ = "yes"
 END IF
END IF

LOOP WHILE holdcard$ <> CHR$(32)

FOR dealstop# = 1 TO 7000: NEXT dealstop#

IF keepa$ = "no" THEN
    acard% = INT(RND * 13)
    ast% = INT(RND * 4)
    IF ast% = 0 THEN acardst$ = ""
    IF ast% = 1 THEN acardst$ = ""
    IF ast% = 2 THEN acardst$ = ""
    IF ast% = 3 THEN acardst$ = ""
    COLOR 7, 0
    LOCATE 5, 9
    PRINT "       "
    LOCATE 6, 9
    PRINT "       "
    LOCATE 7, 9
    PRINT "       "
    LOCATE 8, 9
    PRINT "       "
    LOCATE 9, 9
    PRINT "       "
    FOR dealstop# = 1 TO 5000: NEXT dealstop#
    IF acard% = 0 THEN acard$ = "2"
    IF acard% = 1 THEN acard$ = "3"
    IF acard% = 2 THEN acard$ = "4"
    IF acard% = 3 THEN acard$ = "5"
    IF acard% = 4 THEN acard$ = "6"
    IF acard% = 5 THEN acard$ = "7"
    IF acard% = 6 THEN acard$ = "8"
    IF acard% = 7 THEN acard$ = "9"
    IF acard% = 8 THEN acard$ = "10"
    IF acard% = 9 THEN acard$ = "J"
    IF acard% = 10 THEN acard$ = "Q"
    IF acard% = 11 THEN acard$ = "K"
    IF acard% = 12 THEN acard$ = "A"
    COLOR 7, 0
    LOCATE 5, 9
    PRINT "�������"
    LOCATE 6, 9
    PRINT "�������"
    LOCATE 7, 9
    PRINT "�������"
    LOCATE 8, 9
    PRINT "�������"
    LOCATE 9, 9
    PRINT "�������"
    IF ast% < 2 THEN COLOR 4, 15
    IF ast% > 1 THEN COLOR 0, 15
    LOCATE 6, 10
    PRINT acard$
    IF acard$ = "10" THEN LOCATE 8, 13: PRINT acard$:  ELSE LOCATE 8, 14: PRINT acard$
    LOCATE 7, 12
    PRINT acardst$
    FOR dealcard# = 1 TO 7000: NEXT dealcard#
END IF

IF keepb$ = "no" THEN
    bcard% = INT(RND * 13)
    bst% = INT(RND * 4)
    IF bst% = 0 THEN bcardst$ = ""
    IF bst% = 1 THEN bcardst$ = ""
    IF bst% = 2 THEN bcardst$ = ""
    IF bst% = 3 THEN bcardst$ = ""
    COLOR 7, 0
    LOCATE 5, 18
    PRINT "       "
    LOCATE 6, 18
    PRINT "       "
    LOCATE 7, 18
    PRINT "       "
    LOCATE 8, 18
    PRINT "       "
    LOCATE 9, 18
    PRINT "       "
    FOR dealstop# = 1 TO 5000: NEXT dealstop#
    IF bcard% = 0 THEN bcard$ = "2"
    IF bcard% = 1 THEN bcard$ = "3"
    IF bcard% = 2 THEN bcard$ = "4"
    IF bcard% = 3 THEN bcard$ = "5"
    IF bcard% = 4 THEN bcard$ = "6"
    IF bcard% = 5 THEN bcard$ = "7"
    IF bcard% = 6 THEN bcard$ = "8"
    IF bcard% = 7 THEN bcard$ = "9"
    IF bcard% = 8 THEN bcard$ = "10"
    IF bcard% = 9 THEN bcard$ = "J"
    IF bcard% = 10 THEN bcard$ = "Q"
    IF bcard% = 11 THEN bcard$ = "K"
    IF bcard% = 12 THEN bcard$ = "A"
    COLOR 7, 0
    LOCATE 5, 18
    PRINT "�������"
    LOCATE 6, 18
    PRINT "�������"
    LOCATE 7, 18
    PRINT "�������"
    LOCATE 8, 18
    PRINT "�������"
    LOCATE 9, 18
    PRINT "�������"
    IF bst% < 2 THEN COLOR 4, 15
    IF bst% > 1 THEN COLOR 0, 15
    LOCATE 6, 19
    PRINT bcard$
    IF bcard$ = "10" THEN LOCATE 8, 22: PRINT bcard$:  ELSE LOCATE 8, 23: PRINT bcard$
    LOCATE 7, 21
    PRINT bcardst$
    FOR dealcard# = 1 TO 7000: NEXT dealcard#
END IF

IF keepc$ = "no" THEN
    ccard% = INT(RND * 13)
    cst% = INT(RND * 4)
    IF cst% = 0 THEN ccardst$ = ""
    IF cst% = 1 THEN ccardst$ = ""
    IF cst% = 2 THEN ccardst$ = ""
    IF cst% = 3 THEN ccardst$ = ""
    COLOR 7, 0
    LOCATE 5, 27
    PRINT "       "
    LOCATE 6, 27
    PRINT "       "
    LOCATE 7, 27
    PRINT "       "
    LOCATE 8, 27
    PRINT "       "
    LOCATE 9, 27
    PRINT "       "
    FOR dealstop# = 1 TO 5000: NEXT dealstop#
    IF ccard% = 0 THEN ccard$ = "2"
    IF ccard% = 1 THEN ccard$ = "3"
    IF ccard% = 2 THEN ccard$ = "4"
    IF ccard% = 3 THEN ccard$ = "5"
    IF ccard% = 4 THEN ccard$ = "6"
    IF ccard% = 5 THEN ccard$ = "7"
    IF ccard% = 6 THEN ccard$ = "8"
    IF ccard% = 7 THEN ccard$ = "9"
    IF ccard% = 8 THEN ccard$ = "10"
    IF ccard% = 9 THEN ccard$ = "J"
    IF ccard% = 10 THEN ccard$ = "Q"
    IF ccard% = 11 THEN ccard$ = "K"
    IF ccard% = 12 THEN ccard$ = "A"
    COLOR 7, 0
    LOCATE 5, 27
    PRINT "�������"
    LOCATE 6, 27
    PRINT "�������"
    LOCATE 7, 27
    PRINT "�������"
    LOCATE 8, 27
    PRINT "�������"
    LOCATE 9, 27
    PRINT "�������"
    IF cst% < 2 THEN COLOR 4, 15
    IF cst% > 1 THEN COLOR 0, 15
    LOCATE 6, 28
    PRINT ccard$
    IF ccard$ = "10" THEN LOCATE 8, 31: PRINT ccard$:  ELSE LOCATE 8, 32: PRINT ccard$
    LOCATE 7, 30
    PRINT ccardst$
    FOR dealcard# = 1 TO 7000: NEXT dealcard#
END IF

IF keepd$ = "no" THEN
    dcard% = INT(RND * 13)
    dst% = INT(RND * 4)
    IF dst% = 0 THEN dcardst$ = ""
    IF dst% = 1 THEN dcardst$ = ""
    IF dst% = 2 THEN dcardst$ = ""
    IF dst% = 3 THEN dcardst$ = ""
    COLOR 7, 0
    LOCATE 5, 36
    PRINT "       "
    LOCATE 6, 36
    PRINT "       "
    LOCATE 7, 36
    PRINT "       "
    LOCATE 8, 36
    PRINT "       "
    LOCATE 9, 36
    PRINT "       "
    FOR dealstop# = 1 TO 5000: NEXT dealstop#
    IF dcard% = 0 THEN dcard$ = "2"
    IF dcard% = 1 THEN dcard$ = "3"
    IF dcard% = 2 THEN dcard$ = "4"
    IF dcard% = 3 THEN dcard$ = "5"
    IF dcard% = 4 THEN dcard$ = "6"
    IF dcard% = 5 THEN dcard$ = "7"
    IF dcard% = 6 THEN dcard$ = "8"
    IF dcard% = 7 THEN dcard$ = "9"
    IF dcard% = 8 THEN dcard$ = "10"
    IF dcard% = 9 THEN dcard$ = "J"
    IF dcard% = 10 THEN dcard$ = "Q"
    IF dcard% = 11 THEN dcard$ = "K"
    IF dcard% = 12 THEN dcard$ = "A"
    COLOR 7, 0
    LOCATE 5, 36
    PRINT "�������"
    LOCATE 6, 36
    PRINT "�������"
    LOCATE 7, 36
    PRINT "�������"
    LOCATE 8, 36
    PRINT "�������"
    LOCATE 9, 36
    PRINT "�������"
    IF dst% < 2 THEN COLOR 4, 15
    IF dst% > 1 THEN COLOR 0, 15
    LOCATE 6, 37
    PRINT dcard$
    IF dcard$ = "10" THEN LOCATE 8, 40: PRINT dcard$:  ELSE LOCATE 8, 41: PRINT dcard$
    LOCATE 7, 39
    PRINT dcardst$
    FOR dealcard# = 1 TO 7000: NEXT dealcard#
END IF

IF keepe$ = "no" THEN
    ecard% = INT(RND * 13)
    est% = INT(RND * 4)
    IF est% = 0 THEN ecardst$ = ""
    IF est% = 1 THEN ecardst$ = ""
    IF est% = 2 THEN ecardst$ = ""
    IF est% = 3 THEN ecardst$ = ""
    COLOR 7, 0
    LOCATE 5, 45
    PRINT "       "
    LOCATE 6, 45
    PRINT "       "
    LOCATE 7, 45
    PRINT "       "
    LOCATE 8, 45
    PRINT "       "
    LOCATE 9, 45
    PRINT "       "
    FOR dealstop# = 1 TO 5000: NEXT dealstop#
    IF ecard% = 0 THEN ecard$ = "2"
    IF ecard% = 1 THEN ecard$ = "3"
    IF ecard% = 2 THEN ecard$ = "4"
    IF ecard% = 3 THEN ecard$ = "5"
    IF ecard% = 4 THEN ecard$ = "6"
    IF ecard% = 5 THEN ecard$ = "7"
    IF ecard% = 6 THEN ecard$ = "8"
    IF ecard% = 7 THEN ecard$ = "9"
    IF ecard% = 8 THEN ecard$ = "10"
    IF ecard% = 9 THEN ecard$ = "J"
    IF ecard% = 10 THEN ecard$ = "Q"
    IF ecard% = 11 THEN ecard$ = "K"
    IF ecard% = 12 THEN ecard$ = "A"
    COLOR 7, 0
    LOCATE 5, 45
    PRINT "�������"
    LOCATE 6, 45
    PRINT "�������"
    LOCATE 7, 45
    PRINT "�������"
    LOCATE 8, 45
    PRINT "�������"
    LOCATE 9, 45
    PRINT "�������"
    IF est% < 2 THEN COLOR 4, 15
    IF est% > 1 THEN COLOR 0, 15
    LOCATE 6, 46
    PRINT ecard$
    IF ecard$ = "10" THEN LOCATE 8, 49: PRINT ecard$:  ELSE LOCATE 8, 50: PRINT ecard$
    LOCATE 7, 48
    PRINT ecardst$
    FOR dealcard# = 1 TO 7000: NEXT dealcard#
END IF

DO
tempa% = acard%
tempb% = bcard%
tempc% = ccard%
tempd% = dcard%
tempe% = ecard%
acard% = tempb%
bcard% = tempc%
ccard% = tempd%
dcard% = tempe%
ecard% = tempa%
LOOP UNTIL acard% <= bcard% AND acard% <= ccard% AND acard% <= dcard% AND acard% <= ecard%


DO
tempb% = bcard%
tempc% = ccard%
tempd% = dcard%
tempe% = ecard%
bcard% = tempc%
ccard% = tempd%
dcard% = tempe%
ecard% = tempb%
LOOP UNTIL bcard% <= ccard% AND bcard% <= dcard% AND bcard% <= ecard%
  
DO
tempc% = ccard%
tempd% = dcard%
tempe% = ecard%
ccard% = tempd%
dcard% = tempe%
ecard% = tempc%
LOOP UNTIL ccard% <= dcard% AND ccard% <= ecard%
   
DO
tempd% = dcard%
tempe% = ecard%
dcard% = tempe%
ecard% = tempd%
LOOP UNTIL dcard% <= ecard%

IF acard% = bcard% AND acard% = ccard% AND acard% = dcard% AND acard% = ecard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Five of a kind, you win $"; (bet * 1000)
 money = money + (bet * 1000)
 GOTO payup
END IF

IF acard% = 8 AND bcard% = 9 AND ccard% = 10 AND dcard% = 11 AND ecard% = 12 AND acardst$ = bcardst$ AND acardst$ = ccardst$ AND acardst$ = dcardst$ AND acardst$ = ecardst$ THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Royal Flush, you win $"; (bet * 400)
 money = money + (bet * 400)
 GOTO payup
END IF

IF ecard% = 1 + dcard% AND dcard% = 1 + ccard% AND ccard% = 1 + bcard% AND bcard% = 1 + acard AND ast% = bst% AND ast% = cst% AND ast% = dst% AND ast% = est% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Straight Flush, you win $"; (bet * 200)
 money = money + (bet * 200)
 GOTO payup
END IF

IF acard% = bcard% AND acard% = ccard% AND acard% = dcard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Four of a kind, you win $"; (bet * 100)
 money = money + (bet * 100)
 GOTO payup
END IF

IF bcard% = ccard% AND bcard% = dcard% AND bcard% = ecard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Four of a kind, you win $"; (bet * 100)
 money = money + (bet * 100)
 GOTO payup
END IF

IF acard% = bcard% AND acard% = ccard% AND dcard% = ecard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Full House, you win $"; (bet * 30)
 money = money + (bet * 30)
 GOTO payup
END IF

IF acard% = bcard% AND ccard% = dcard% AND ccard% = ecard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Full House, you win $"; (bet * 30)
 money = money + (bet * 30)
 GOTO payup
END IF

IF ast% = bst% AND ast% = cst% AND ast% = dst% AND ast% = est% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Flush, you win $"; (bet * 20)
 money = money + (bet * 20)
 GOTO payup
END IF

IF ecard% = 1 + dcard% AND dcard% = 1 + ccard% AND ccard% = 1 + bcard% AND bcard% = 1 + acard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Straight, you win $"; (bet * 10)
 money = money + (bet * 10)
 GOTO payup
END IF

IF acard% = bcard% AND acard% = ccard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Three of a kind, you win $"; (bet * 5)
 money = money + (bet * 5)
 GOTO payup
END IF

IF bcard% = ccard% AND bcard% = dcard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Three of a kind, you win $"; (bet * 5)
 money = money + (bet * 5)
 GOTO payup
END IF

IF ccard% = dcard% AND ccard% = ecard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Three of a kind, you win $"; (bet * 5)
 money = money + (bet * 5)
 GOTO payup
END IF

IF acard% = bcard% AND ccard% = dcard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Two Pair, you win $"; (bet * 3)
 money = money + (bet * 3)
 GOTO payup
END IF

IF acard% = bcard% AND dcard% = ecard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Two Pair, you win $"; (bet * 3)
 money = money + (bet * 3)
 GOTO payup
END IF

IF bcard% = ccard% AND dcard% = ecard% THEN
 LOCATE 15, 20
 COLOR 7, 0
 PRINT "Two Pair, you win $"; (bet * 3)
 money = money + (bet * 3)
 GOTO payup
END IF

IF acard% = bcard% THEN
  IF acard% > 8 THEN
    LOCATE 15, 18
    COLOR 7, 0
    PRINT "Jacks or Better, you win $"; bet
    GOTO payup
  END IF
END IF

IF bcard% = ccard% THEN
  IF bcard% > 8 THEN
    LOCATE 15, 18
    COLOR 7, 0
    PRINT "Jacks or Better, you win $"; bet
    GOTO payup
  END IF
END IF

IF ccard% = dcard% THEN
  IF ccard% > 8 THEN
    LOCATE 15, 18
    COLOR 7, 0
    PRINT "Jacks or Better, you win $"; bet
    GOTO payup
  END IF
END IF

IF dcard% = ecard% THEN
  IF dcard% > 8 THEN
    LOCATE 15, 18
    COLOR 7, 0
    PRINT "Jacks or Better, you win $"; bet
    GOTO payup
  END IF
END IF

LOCATE 15, 18
COLOR 7, 0
PRINT "You lose your bet of $"; bet
money = money - bet

payup:
LOCATE 17, 15
PRINT "Deal again to bet the same amount"
GetPress
GOTO poker2

blackjack:


roulette:
bet = 0
roulette2:
CLS
PRINT ""
PRINT "                 **   Roulette   **"
PRINT "===================================================="
PRINT ""
PRINT "              [1]  Place Bet  (Required)"
PRINT "              [2]  View current Bet "
PRINT "              [3]  Spin"
PRINT "              [4]  Play different game"
PRINT "      (answer using number)"
DO
INPUT "              ? ", poi%
LOOP UNTIL poi% > 0 AND poi% < 5
IF poi% = 4 THEN GOTO pickgame
IF poi% = 3 THEN GOTO spin
IF poi% = 2 THEN GOTO viewbet
CLS
PRINT ""
PRINT "           **  Place a bet  **"
PRINT "========================================="
PRINT ""
PRINT "       Would you like to bet on ..."
PRINT "         (You can only pick one)"
PRINT ""
PRINT "          [1]  Single Number"
PRINT "          [2]  Red / Black"
PRINT "          [3]  Even / Odd"
PRINT "          [4]  Sets of 12"
PRINT "    (answer using number)"
DO
INPUT "          ? ", beton%
LOOP UNTIL beton% > 0 AND beton% < 5
IF beton% = 1 THEN
  CLS
  PRINT ""
  PRINT "           **  Place a bet  **"
  PRINT "========================================="
  PRINT ""
  PRINT " Which number would you like to bet on?"
  PRINT "     Numbers are 1-36, 0, and 00"
  DO
  INPUT "            number? ", singnum$
  LOOP UNTIL singnum$ = "0" OR singnum$ = "1" OR singnum$ = "2" OR singnum$ = "3" OR singnum$ = "4" OR singnum$ = "5" OR singnum$ = "6" OR singnum$ = "7" OR singnum$ = "8" OR singnum$ = "9" OR singnum$ = "10" OR singnum$ = "11" OR singnum$ = "12" OR singnum$ = "13" OR singnum$ = "14" OR singnum$ = "15" OR singnum$ = "16" OR singnum$ = "17" OR singnum$ = "18" OR singnum$ = "19" OR singnum$ = "20" OR singnum$ = "21" OR singnum$ = "22" OR singnum$ = "23" OR singnum$ = "24" OR singnum$ = "25" OR singnum$ = "26" OR singnum$ = "27" OR singnum$ = "28" OR singnum$ = "29" OR singnum$ = "30" OR singnum$ = "31" OR singnum$ = "32" OR singnum$ = "33" OR singnum$ = "34" OR singnum$ = "35" OR singnum$ = "36" OR singnum$ = "00"
  GOTO roulbet
END IF
IF beton% = 2 THEN
  CLS
  PRINT ""
  PRINT "           **  Place a bet  **"
  PRINT "========================================="
  PRINT ""
  PRINT "       Would you like to bet on ..."
  PRINT "               [1]  Red"
  PRINT "               [2]  Black "
  DO
  INPUT "               ? ", redblack
  LOOP UNTIL redblack > 0 AND redblack < 3
  GOTO roulbet
END IF
IF beton% = 3 THEN
  CLS
  PRINT ""
  PRINT "           **  Place a bet  **"
  PRINT "========================================="
  PRINT ""
  PRINT "       Would you like to bet on ..."
  PRINT "        (0 is even and 00 is odd)"
  PRINT ""
  PRINT "                [1]  Even"
  PRINT "                [2]  Odd"
  DO
  INPUT "                ? ", evenodd
  LOOP UNTIL evenodd > 0 AND evenodd < 3
  GOTO roulbet
END IF
IF beton% = 4 THEN
  CLS
  PRINT ""
  PRINT "           **  Place a bet  **"
  PRINT "========================================="
  PRINT ""
  PRINT "Which set of 12 would you like to bet on?"
  PRINT ""
  PRINT "             [1]  1 - 12"
  PRINT "             [2]  13 - 24"
  PRINT "             [3]  25 - 36"
  DO
  INPUT "                ? ", setsof%
  LOOP UNTIL setsof% > 0 AND setsof% < 4
END IF
roulbet:
CLS
PRINT ""
PRINT "           **  Place a bet  **"
PRINT "========================================="
PRINT ""
PRINT "          Maximum bet is $ 1000"
PRINT "           You have $"; money
PRINT "     How much would you like to bet?"
DO
INPUT "                  $", bet
LOOP UNTIL bet > -1
IF bet > 1000 THEN PRINT "     That is over the maximum bet.": GetPress: GOTO roulbet
IF bet > money THEN PRINT "    You don't have that much money.": GetPress: GOTO roulbet
viewbet:
CLS
PRINT ""
PRINT "        **  Here's what you bet on  **"
PRINT "=============================================="
PRINT ""
IF bet = 0 THEN
  PRINT "        You Haven't placed a bet yet!"
  GetPress
  GOTO roulette2
END IF
PRINT "             You bet $"; bet; "on"
IF beton% = 1 THEN
  PRINT "           the single number "; singnum$
  PRINT ""
  PRINT "   The odds of you winning are 1 in 38"
  PRINT "  If you win, you will be paid $"; (bet * 38)
END IF
IF beton% = 2 THEN
  IF redblack = 1 THEN PRINT "              The color Red": redblack$ = "Red"
  IF redblack = 2 THEN PRINT "             The color Black": redblack$ = "Black"
  PRINT ""
  PRINT "  The odds of you winning are 9 in 19"
  PRINT " If you win, you will be paid $"; (bet * 2)
END IF
IF beton% = 3 THEN
  IF evenodd = 1 THEN PRINT "             All even Numbers": evenodd$ = "Even"
  IF evenodd = 2 THEN PRINT "             All odd Numbers": evenodd$ = "Odd"
  PRINT ""
  PRINT "  The odds of you winning are 9 in 19"
  PRINT " If you win, you will be paid $"; (bet * 2)
END IF
IF beton% = 4 THEN
  IF setsof% = 1 THEN PRINT "     The set of numbers 1 - 12"
  IF setsof% = 2 THEN PRINT "     The set of numbers 13 - 24"
  IF setsof% = 3 THEN PRINT "     The set of numbers 25 - 36"
  PRINT ""
  PRINT "  The odds of you winning are 6 in 19"
  PRINT " If you win, you will be paid $"; (bet * 3)
END IF
GetPress
GOTO roulette2

spin:
IF bet > money THEN PRINT "You don't have enough money": GetPress: GOTO roulbet
CLS
RANDOMIZE TIMER
roulwina% = INT(RND * 38)
IF roulwina% = 0 THEN Roulwin$ = "0": wincol$ = "Green"
IF roulwina% = 1 THEN Roulwin$ = "1": wincol$ = "Red"
IF roulwina% = 2 THEN Roulwin$ = "2": wincol$ = "Black"
IF roulwina% = 3 THEN Roulwin$ = "3": wincol$ = "Red"
IF roulwina% = 4 THEN Roulwin$ = "4": wincol$ = "Black"
IF roulwina% = 5 THEN Roulwin$ = "5": wincol$ = "Red"
IF roulwina% = 6 THEN Roulwin$ = "6": wincol$ = "Black"
IF roulwina% = 7 THEN Roulwin$ = "7": wincol$ = "Red"
IF roulwina% = 8 THEN Roulwin$ = "8": wincol$ = "Black"
IF roulwina% = 9 THEN Roulwin$ = "9": wincol$ = " Red"
IF roulwina% = 10 THEN Roulwin$ = "10": wincol$ = "Black"
IF roulwina% = 11 THEN Roulwin$ = "11": wincol$ = "Black"
IF roulwina% = 12 THEN Roulwin$ = "12": wincol$ = "Red"
IF roulwina% = 13 THEN Roulwin$ = "13": wincol$ = "Black"
IF roulwina% = 14 THEN Roulwin$ = "14": wincol$ = "Red"
IF roulwina% = 15 THEN Roulwin$ = "15": wincol$ = "Black"
IF roulwina% = 16 THEN Roulwin$ = "16": wincol$ = "Red"
IF roulwina% = 17 THEN Roulwin$ = "17": wincol$ = "Black"
IF roulwina% = 18 THEN Roulwin$ = "18": wincol$ = "Red"
IF roulwina% = 19 THEN Roulwin$ = "19": wincol$ = "Red"
IF roulwina% = 20 THEN Roulwin$ = "20": wincol$ = "Black"
IF roulwina% = 21 THEN Roulwin$ = "21": wincol$ = "Red"
IF roulwina% = 22 THEN Roulwin$ = "22": wincol$ = "Black"
IF roulwina% = 23 THEN Roulwin$ = "23": wincol$ = "Red"
IF roulwina% = 24 THEN Roulwin$ = "24": wincol$ = "Black"
IF roulwina% = 25 THEN Roulwin$ = "25": wincol$ = "Red"
IF roulwina% = 26 THEN Roulwin$ = "26": wincol$ = "Black"
IF roulwina% = 27 THEN Roulwin$ = "27": wincol$ = "Red"
IF roulwina% = 28 THEN Roulwin$ = "28": wincol$ = "Black"
IF roulwina% = 29 THEN Roulwin$ = "29": wincol$ = "Black"
IF roulwina% = 30 THEN Roulwin$ = "30": wincol$ = "Red"
IF roulwina% = 31 THEN Roulwin$ = "31": wincol$ = "Black"
IF roulwina% = 32 THEN Roulwin$ = "32": wincol$ = "Red"
IF roulwina% = 33 THEN Roulwin$ = "33": wincol$ = "Black"
IF roulwina% = 34 THEN Roulwin$ = "34": wincol$ = "Red"
IF roulwina% = 35 THEN Roulwin$ = "35": wincol$ = "Black"
IF roulwina% = 36 THEN Roulwin$ = "36": wincol$ = "Red"
IF roulwina% = 37 THEN Roulwin$ = "00": wincol$ = "Green"
PRINT " "
PRINT "              **  Winning Number  **"
PRINT "=================================================="
PRINT ""
PRINT "       The Winning Number is "; Roulwin$; " Which is "; wincol$
PRINT ""
IF beton% = 4 THEN GOTO sets

IF beton% = 1 THEN
  PRINT "        You bet on the single number "; singnum$
  IF singnum$ = Roulwin$ THEN
    PRINT ""
    PRINT "                     You Win!!"
    PRINT "     Your risk paid off!!  You win $"; (bet * 38); "!"
    money = money + (bet * 38)
    GetPressb
    GOTO roulend
  END IF
  GOTO lose
END IF

IF beton% = 2 THEN
  PRINT "             You bet on the color "; redblack$
  IF redblack$ = wincol$ THEN
    PRINT ""
    PRINT "                     You Win!!"
    PRINT "         You didn't take much of a risk,"
    PRINT "            but still won $"; (bet * 2)
    money = money + (bet * 2)
    GetPressb
    GOTO roulend
  END IF
  GOTO lose
END IF

IF beton% = 3 THEN
  PRINT "       You bet on all of the "; evenodd$; " numbers"
  IF evenodd$ = "Even" THEN
    IF Roulwin$ = "0" OR Roulwin$ = "2" OR Roulwin$ = "4" OR Roulwin$ = "6" OR Roulwin$ = "8" OR Roulwin$ = "10" OR Roulwin$ = "12" OR Roulwin$ = "14" OR Roulwin$ = "16" OR Roulwin$ = "18" OR Roulwin$ = "20" OR Roulwin$ = "22" OR Roulwin$ = "24" OR Roulwin$ = "26" OR Roulwin$ = "28" OR Roulwin$ = "30" OR Roulwin$ = "32" OR Roulwin$ = "34" OR Roulwin$ = "36" THEN
      PRINT ""
      PRINT "                     You Win!!"
      PRINT "          You didn't take much of a risk,"
      PRINT "             but still won $"; (bet * 2)
      money = money + (bet * 2)
      GetPressb
      GOTO roulend
    END IF
  GOTO lose
  END IF
  IF evenodd$ = "Odd" THEN
    IF Roulwin$ = "00" OR Roulwin$ = "1" OR Roulwin$ = "3" OR Roulwin$ = "5" OR Roulwin$ = "7" OR Roulwin$ = "9" OR Roulwin$ = "11" OR Roulwin$ = "13" OR Roulwin$ = "15" OR Roulwin$ = "17" OR Roulwin$ = "19" OR Roulwin$ = "21" OR Roulwin$ = "23" OR Roulwin$ = "25" OR Roulwin$ = "27" OR Roulwin$ = "29" OR Roulwin$ = "31" OR Roulwin$ = "33" OR Roulwin$ = "35" THEN
      PRINT ""
      PRINT "                     You Win!!"
      PRINT "          You didn't take much of a risk,"
      PRINT "             but still won $"; (bet * 2)
      money = money + (bet * 2)
      GetPressb
      GOTO roulend
    END IF
  GOTO lose
  END IF
END IF
 
sets:

IF setsof% = 1 THEN
  PRINT "        you bet on the set of numbers 1 - 12"
  IF roulwina% > 0 AND roulwina% < 13 THEN : PRINT "": PRINT "                     You Win!!": PRINT "              You took a small risk,": PRINT "         and it paid off, you win $"; (bet * 3): money = money + (bet * 3): GetPressb: GOTO roulend
  GOTO lose
END IF

IF setsof% = 2 THEN
  PRINT "        you bet on the set of numbers 13 - 24"
  IF roulwina% > 12 AND roulwina% < 25 THEN : PRINT "": PRINT "                     You Win!!": PRINT "              You took a small risk,": PRINT "         and it paid off, you win $"; (bet * 3): money = money + (bet * 3): GetPressb: GOTO roulend
  GOTO lose
END IF

IF setsof% = 3 THEN
  PRINT "        you bet on the set of numbers 25 - 36"
  IF roulwina% > 24 AND roulwina% < 37 THEN : PRINT "": PRINT "                     You Win!!": PRINT "              You took a small risk,": PRINT "         and it paid off, you win $"; (bet * 3): money = money + (bet * 3): GetPressb: GOTO roulend
  GOTO lose
END IF

lose:
PRINT ""
PRINT "             You didn't win this time."
money = money - bet
roulend:
PRINT "   spin again to keep your same bet on the table"
GetPress
GOTO roulette2
575757
END SUB

SUB citylayout
CLS
PRINT "         (turn the NumLock on and use arrow keys on numbers to move)"
PRINT ""
PRINT "          ��������������������������������������������������������Ŀ"
PRINT "          �           **  In the center of the city  **            �"
PRINT "          ��������������������������������������������������������Ĵ"
PRINT "          ����������������������������������������������������������"
PRINT "          ������������������������������������������������������Ŀ��"
PRINT "          ���Big Johnny's�   Little    �Big Johnny's�Big Johnny's���"
PRINT "          ���Crack House �Johnny's Gun � Info Booth �Pub on Main ���"
PRINT "  ������Ŀ���            �    Shack    �            �            ���"
PRINT "  � Save �������Ŀ �����������Ŀ �����������Ŀ ����������Ŀ �����ٰ�"
PRINT "  � Your ��������� ������������� ������������� ������������ ��������������Ŀ"
PRINT "  � Game ��������� ������������� ������������� ������������ ��������� Quit �"
PRINT "  �                                                                        �"
PRINT "  ����������������Ŀ �����������Ŀ ���������������������������Ŀ �����������"
PRINT "          ���������� ������������� ����������������������������� ���"
PRINT "          ���������� ������������� �����Ŀ����������������Ŀ���� ���"
PRINT "          ��� Big Johnny's �Big Johnny's ��� Thunder-Bolts ����� ���"
PRINT "          ��� Neighborhood �   Savings   ��� Headquarters        ���"
PRINT "          ��� Pick n' Save �  and Loan   ���               ������ٰ�"
PRINT "          �������������������������������ٰ����������������ٰ�������"
PRINT "          ����������������������������������������������������������"
PRINT "          ����������������������������������������������������������"

END SUB

SUB copchase
RANDOMIZE TIMER
nmcps% = INT(RND * 5) + 2
newmem = INT(1.5 * (nmcps%))
60500
CLS
rechase = 0
PRINT ""
PRINT "          **   The Cops are chasing you !!   **"
PRINT "========================================================="
PRINT ""
PRINT "             There are"; nmcps%; "cops chasing you!"
PRINT ""
PRINT "                  Would you like to ..."
PRINT ""
PRINT "              [1]  Shoot at the cops"
PRINT "              [2]  Run from the cops          "
PRINT "              [3]  View Weapons          "
PRINT "              [4]  View Your Damage          "
PRINT "              [5]  Use your Uzi!!"
PRINT "              [6]  Use your Missle Launcher!!"
PRINT "              [7]  Use a Grenade!!"
PRINT "           (answer using number)"
PRINT ""
DO
INPUT "              ? ", hsag%
IF hsag% = 1 THEN GOTO 61000
IF hsag% = 2 THEN GOTO 62500
IF hsag% = 3 THEN GOTO 64000
IF hsag% = 4 THEN GOTO 64500
IF hsag% = 5 THEN GOTO 64750
IF hsag% = 6 THEN GOTO shootmis
IF hsag% = 7 THEN GOTO throwgren
LOOP UNTIL hsag% < 8 AND hsag% > 0

shootmis:
IF missiles <= 0 THEN
  PRINT "     You don't have any Missiles!!"
  PRINT "           You have to run!"
  GetPress
  GOTO 60500
END IF
IF mislauch <= 0 THEN
  PRINT "    You don't have a Missile Launcher!!"
  PRINT "             You have to run!"
  GetPress
  GOTO 60500
END IF
RANDOMIZE TIMER
misjam = INT(RND * 2)
IF misjam = 1 THEN
 CLS
 PRINT ""
 PRINT "       **   Shooting Missile at Cops   **"
 PRINT "================================================"
 PRINT ""
 PRINT "         You fire a missile at the cops"
 PRINT "               and kill them all."
 PRINT ""
 GetPress
 GOTO 65000
END IF
IF misjam = 0 THEN
 CLS
 PRINT ""
 PRINT "       **   Shooting Missile at Cops   **"
 PRINT "================================================"
 PRINT ""
 PRINT "      You try to fire a missile at the cops,"
 PRINT "          but the missile doesn't work!"
 PRINT ""
 GetPress
 GOTO 63000
END IF

throwgren:
IF grenades <= 0 THEN
  PRINT "     You don't have any grenades!!"
  PRINT "           You have to run!"
  GetPress
  GOTO 60500
END IF
RANDOMIZE TIMER
badgren = INT(RND * 4)
IF badgren = 0 THEN
 CLS
 PRINT ""
 PRINT "       **   Throwing Grenade at Cops   **"
 PRINT "================================================"
 PRINT ""
 PRINT "             You throw the grenade,"
 PRINT "             but it never explodes."
 PRINT ""
 GetPress
 GOTO 63000
END IF
IF badgren = 1 THEN
 CLS
 PRINT ""
 PRINT "       **   Throwing Grenade at Cops   **"
 PRINT "================================================"
 PRINT ""
 PRINT "             You throw the grenade,"
 PRINT "           Direct hit! You kill a cop!"
 nmcps% = nmcps% - 1
 IF nmcps% <= 0 THEN GOTO 65000
 GetPress
 GOTO 63000
END IF
IF badgren = 2 THEN
 CLS
 PRINT ""
 PRINT "       **   Throwing Grenade at Cops   **"
 PRINT "================================================"
 PRINT ""
 PRINT "          You try to throw the grenade,"
 PRINT "          but it explodes in you face!!"
 PRINT "        That will cost you 3 damage points"
 damage = damage + 3
 IF damage >= 10 THEN
  PRINT ""
  PRINT "  You have received 10 gun shot wounds, you die."
  GOTO nomocop
 END IF
 PRINT ""
 GetPress
 GOTO 63000
END IF
IF badgren = 3 THEN
 CLS
 PRINT ""
 PRINT "       **   Throwing Grenade at Cops   **"
 PRINT "================================================"
 PRINT ""
 PRINT "             You throw the grenade,"
 PRINT "      and it lands on a car near the po po,"
 PRINT "      the car explodes, and kills them all!"
 PRINT ""
 nmcps% = 0
 GetPress
 GOTO 65000
END IF
61000
IF guns <= 0 THEN
  PRINT "     You don't have any guns!!"
  PRINT "         You have to run!"
  GetPress
  GOTO 60500
END IF
IF bullets <= 0 THEN
  PRINT "     You don't have any bullets!!"
  PRINT "           You have to run!"
  GetPress
  GOTO 60500
END IF

61500
RANDOMIZE TIMER
statcps = INT(RND * 6) + 1
IF statcps > bullets THEN statcps = 1
RANDOMIZE TIMER
htatcps = INT(RND * statcps)
IF htatcps > nmcps% THEN htatcps = nmcps%
RANDOMIZE TIMER
gunjam = INT(RND * 5)
IF gunjam > 0 THEN GOTO 62000
CLS
PRINT ""
PRINT "           **   Shooting at Cops   **"
PRINT "================================================"
PRINT ""
PRINT "                Your Gun Jams!!"
PRINT ""
PRINT "   You throw it at the cops, but they dodge it."
GetPress
guns = guns - 1
GOTO 63000
62000
CLS
PRINT ""
PRINT "           **   Shooting at Cops   **"
PRINT "================================================"
PRINT ""
PRINT "         You fire"; statcps; "shots at the cops."
IF statcps = 6 THEN a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang"
IF statcps = 5 THEN a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang"
IF statcps = 4 THEN a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang"
IF statcps = 3 THEN a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang"
IF statcps = 2 THEN a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang"
IF statcps = 1 THEN a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                      Bang"
a = 0: DO WHILE a < 4000: a = a + 1: LOOP
PRINT ""
PRINT "               "; htatcps; "of them die."
nmcps% = nmcps% - htatcps
bullets = bullets - statcps
IF nmcps% <= 0 THEN
  PRINT ""
  PRINT "            You Shot them all!!"
  GetPress
  GOTO 65000
END IF
PRINT ""
PRINT "      There are still"; nmcps%; "cops chasing you."
GetPress
GOTO 63000
62500
CLS
PRINT ""
PRINT "           **   Running from the Cops   **"
PRINT "====================================================="
PRINT ""
RANDOMIZE TIMER
rnfrmcps% = INT(RND * nmcps%)
IF rnfrmcps% = 0 THEN
  PRINT ""
  PRINT "             You lose them in an alley!!"
  GetPress
  GOTO nomocop
END IF
PRINT ""
PRINT "    There's too many of them!,  you can't shake them!"
GetPress
63000
CLS
PRINT ""
PRINT "           **     Being shot at!!     **"
PRINT "==================================================="
PRINT ""
PRINT "           all"; nmcps%; "of them shoot at you!!"
RANDOMIZE TIMER
cphts% = INT(RND * nmcps%) + 1
IF nmcps% = 1 THEN PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: GOTO 63500
IF nmcps% = 2 THEN PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: GOTO 63500
IF nmcps% = 3 THEN PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: GOTO 63500
IF nmcps% = 4 THEN PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: GOTO 63500
IF nmcps% = 5 THEN PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: GOTO 63500
IF nmcps% = 6 THEN PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: PRINT "                       Bang": a = 0: DO WHILE a < 3000: a = a + 1: LOOP: GOTO 63500
63500
PRINT "              "; cphts%; "of them hit you!!"
damage = damage + cphts%
IF damage >= 10 THEN
 PRINT ""
 PRINT "  You have received 10 gun shot wounds, you die."
 GOTO nomocop
END IF
GetPress
GOTO 60500
64000
CLS
PRINT ""
PRINT "          **  Guns and Bullets  **"
PRINT "============================================"
PRINT ""
PRINT "              You have ..."
PRINT ""
IF guns = 1 THEN
  PRINT "             "; guns; "gun"
  ELSE
  PRINT "             "; guns; "guns"
END IF
IF uzis = 1 THEN
  PRINT "             "; uzis; "uzi"
  ELSE
  PRINT "             "; uzis; "uzis"
END IF
IF bullets = 1 THEN
  PRINT "             "; bullets; "bullet"
  ELSE
  PRINT "             "; bullets; "bullets"
END IF
IF mislaunch = 1 THEN
  PRINT "             "; mislaunch; "Missile Launcher"
  ELSE
  PRINT "             "; mislaunch; "Missile Launchers"
END IF
IF missiles = 1 THEN
  PRINT "             "; missiles; "Missile"
  ELSE
  PRINT "             "; missiles; "Missiles"
END IF
IF grenades = 1 THEN
  PRINT "             "; grenades; "grenade"
  ELSE
  PRINT "             "; grenades; "grenades"
END IF
PRINT ""
GetPress
GOTO 60500

64500
CLS
PRINT ""
PRINT "          **     Your Damage Status     **"
PRINT "===================================================="
PRINT ""
PRINT "            You have been shot"; damage; "times."
PRINT ""
PRINT "               ( 10 hits and you die )"
PRINT ""
GetPress
GOTO 60500


64750
IF uzis <= 0 THEN
  PRINT "           Nice try!!"
  PRINT "     You don't have an uzi!"
  GetPress
  GOTO 60500
END IF
IF bullets <= 0 THEN
  PRINT "     You don't have any bullets!!"
  PRINT "           You have to run!"
  GetPress
  GOTO 60500
END IF


64751
RANDOMIZE TIMER
statcps = INT(RND * 10) + 11       'how many shots you fire 11-20
IF statcps > bullets THEN statcps = bullets
RANDOMIZE TIMER
htatcps = INT(RND * statcps) - 5 'how many hit the cops
IF htatcps < 0 THEN htatcps = 0
IF htatcps > nmcps% THEN htatcps = nmcps%

64752
CLS
PRINT ""
PRINT "           **   Shooting at Cops   **"
PRINT "================================================"
PRINT ""
PRINT "         You fire"; statcps; "shots at the cops."
GetPress
68100 CLS

CLS
DO WHILE looper < 275
hgh% = INT(RND * 16)
COLOR hgh%
PRINT ""
PRINT "          ** Bang **** Bang **** Bang **** Bang **    "
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
LOCATE 3, 1
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
DO
ycoord% = INT(RND * 22)
LOOP UNTIL ycoord% > 5
DO
xcoord% = INT(RND * 60)
LOOP UNTIL xcoord% > 2

LOCATE ycoord%, xcoord%
hgh% = INT(RND * 16)
COLOR hgh%
PRINT "Bang"
LOCATE 3, 1
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
xline% = 2
DO
LOCATE ycoord%, xline%
PRINT " "
xline% = xline% + 1
LOOP UNTIL xline% = xcoord%
xlineb% = xcoord% + 4
DO
LOCATE ycoord%, xlineb%
PRINT " "
xlineb% = xlineb% + 1
LOOP UNTIL xlineb% = 76
LOCATE 3, 1
PRINT " = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
PRINT "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="
LOCATE 1, 1
looper = looper + 1
LOOP



a = 0: DO WHILE a < 4000: a = a + 1: LOOP
COLOR 7
CLS
PRINT ""
PRINT "           **   Shooting at Cops   **"
PRINT "================================================"
PRINT ""
PRINT "         You fire"; statcps; "shots at the cops."
PRINT ""
PRINT "                "; htatcps; "of them die."
nmcps% = nmcps% - htatcps
bullets = bullets - statcps
IF nmcps% <= 0 THEN
  PRINT ""
  PRINT "            You Shot them all!!"
  PRINT "          Guess that Uzi paid off!!"
  GetPress
  GOTO 65000
END IF
PRINT ""
PRINT "      There are still"; nmcps%; "cops chasing you."
PRINT "      Haven't you learned how to use that Uzi yet!!"
GetPress
GOTO 63000

65000
CLS
PRINT ""
PRINT "          **   You killed them all!!   **"
PRINT "==================================================="
PRINT ""
PRINT "          "; newmem; "people see you kill the cops,"
PRINT "                and join your gang."
members = members + newmem
PRINT ""
PRINT "          You gang now has"; members; "members"
GetPress
CLS
PRINT ""
PRINT "           **   Go to hospital?   **"
PRINT "==============================================="
PRINT ""
PRINT "      Would you like to go to a hospital,"
PRINT "               and get fixed up?"
PRINT ""
INPUT "                 (Y or N) ", gthos$
gthos$ = UCASE$(gthos$)
IF gthos$ = "N" THEN
 PRINT ""
 PRINT "   That leaves you with"; damage; "gun shot wounds"
 PRINT "            (10 and you die)"
 GetPress
 GOTO nomocop
END IF
RANDOMIZE TIMER
orec% = INT(RND * 10)
IF orec% > 1 THEN GOTO 65500
CLS
PRINT ""
PRINT "             **   At the Hospital   **"
PRINT "==================================================="
PRINT ""
PRINT "    One of the nurses recognizes your face from"
PRINT "               Americas Most Wanted."
PRINT ""
PRINT "         The cops start chasing you again!!"
rechase = 1
GetPress
GOTO nomocop
65500
CLS
PRINT ""
PRINT "             **   At the Hospital   **"
PRINT "==================================================="
PRINT ""
PRINT "       The doctor says that it will cost you"
PRINT "       $ 1,000 per gun shot wound for a total "
PRINT "                cost of $"; (damage * 1000); ""
PRINT ""
PRINT "       Will you pay the doctor to fix you up?"
INPUT "                 (Y or N) ? ", paydoc$
paydoc$ = UCASE$(paydoc$)
IF paydoc$ = "N" THEN
 PRINT ""
 PRINT "         You leave the hospital."
 GetPress
 GOTO nomocop
END IF
IF money < (damage * 1000) THEN
  PRINT ""
  PRINT "          You can't afford it. You leave"
  GetPress
  GOTO nomocop
END IF
CLS
PRINT ""
PRINT "           **   Paid Hospital Bill   **"
PRINT "=================================================="
PRINT ""
PRINT "            You pay the doctor $"; (damage * 1000); ","
PRINT "         to stitch up your gunshot wounds."
PRINT ""
PRINT "             Your damage now equals 0"
PRINT ""
money = money - (damage * 1000)
damage = 0
GetPress

nomocop:
END SUB

SUB crackhouse
601
CLS
PRINT ""
PRINT "        **      Big Johnnys Crack House      **"
PRINT "======================================================="
PRINT ""
PRINT "          Current Market Values"
PRINT "      $"; poweed; "per unit of weed"
PRINT "      $"; pocrack; "per unit of crack"
PRINT "      $"; pocoke; "per unit of coke"
PRINT ""
PRINT "       They will only pay you ..."
PRINT "      $"; (poweed - 30); "per unit of weed"
PRINT "      $"; (pocrack - 300); "per unit of crack"
PRINT "      $"; (pocoke - 3000); "per unit ff cocaine"
PRINT ""
PRINT "   Would you like to ..."
PRINT ""
PRINT "   [1] Buy drugs"
PRINT "   [2] Sell drugs"
PRINT "   [3] Leave"
PRINT "(answer using number)"
DO
cleareight:
IF INKEY$ = "8" THEN GOTO cleareight
INPUT "   ? ", ddl%
LOOP UNTIL ddl% > 0 AND ddl% < 4

IF ddl% = 1 THEN GOTO 650
IF ddl% = 2 THEN GOTO 700
IF ddl% = 3 THEN GOTO leavech
650
CLS
PRINT ""
PRINT "               **  Buy Drugs  ** "
PRINT "==============================================="
PRINT ""
PRINT "   Which drug would you like to buy?"
PRINT ""
PRINT "          [1]  Weed     ($"; poweed; "per unit)"
PRINT "          [2]  Crack    ($"; pocrack; "per unit)"
PRINT "          [3]  Cocaine  ($"; pocoke; "per unit)"
PRINT "          [4]  Go Back"
PRINT "  (answer with number)  "
DO
INPUT "          ? ", ddb%
LOOP UNTIL ddb% > 0 AND ddb% < 5
PRINT ""
IF ddb% = 4 THEN GOTO 601
IF ddb% = 1 THEN
  PRINT "  You can afford"; (INT(money / poweed))
  mdkmdk = (INT(money / poweed))
  cost = poweed
END IF
IF ddb% = 2 THEN
  PRINT "  You can afford"; (INT(money / pocrack))
  mdkmdk = (INT(money / pocrack))
  cost = pocrack
END IF
IF ddb% = 3 THEN
  PRINT "  You can afford"; (INT(money / pocoke))
  mdkmdk = (INT(money / pocoke))
  cost = pocoke
END IF
IF mdkmdk <= 0 THEN PRINT "  You can't afford any, try a cheaper drug or leave.":  GetPress: GOTO 650
howmany:
LOCATE 20, 1
PRINT "                                        "
LOCATE 17, 1
PRINT "                                            "
LOCATE 15, 1
PRINT "                                             "
ndtb = 0
LOCATE 15, 1
INPUT "  How many would you like to buy? ", ndtb
IF money < (cost * ndtb) THEN
  PRINT ""
  PRINT "  You can't afford that many moron!!"
  PRINT ""
  GetPress
  GOTO howmany
END IF
money = (money - (cost * ndtb))
IF ddb% = 1 THEN
  weed = weed + ndtb
  PRINT ""
  PRINT "You just bought"; ndtb; "units of weed for $"; (cost * ndtb)
  GetPress
  GOTO 601
END IF
IF ddb% = 2 THEN
  crack = crack + ndtb
  PRINT ""
  PRINT "You just bought"; ndtb; "units of crack for $"; (cost * ndtb)
  GetPress
  GOTO 601
END IF
IF ddb% = 3 THEN
  coke = coke + ndtb
  PRINT ""
  PRINT "You just bought"; ndtb; "units of cocaine for $"; (cost * ndtb)
  GetPress
  GOTO 601
END IF

700
CLS
PRINT ""
PRINT "              **  Sell Drugs  ** "
PRINT "================================================"
PRINT ""
PRINT "   Which drug would you like to sell?"
PRINT ""
PRINT "          [1]  Weed     ($"; poweed - 30; "per unit)"
PRINT "          [2]  Crack    ($"; pocrack - 300; "per unit)     "
PRINT "          [3]  Cocaine  ($"; pocoke - 3000; "per unit)     "
PRINT "          [4]  Go Back"
PRINT "  (answer with number) "
DO
INPUT "          ? ", ddc%
LOOP UNTIL ddc% > 0 AND ddc% < 5
PRINT ""
IF ddc% = 4 THEN GOTO 601
IF ddc% = 1 THEN
  PRINT "  You have"; weed; "units of weed"
  price = poweed - 30
  utut = weed
END IF
IF ddc% = 2 THEN
  PRINT "  You have"; crack; "units of crack"
  price = pocrack - 300
  utut = crack
END IF
IF ddc% = 3 THEN
  PRINT "  You have"; coke; "units of cocaine"
  price = pocoke - 3000
  utut = coke
END IF
IF utut <= 0 THEN PRINT "  You don't have any, try a different drug or leave.":  GetPress: GOTO 700
sellhm:
LOCATE 17, 1
PRINT "                                                  "
LOCATE 20, 1
PRINT "                                     "
LOCATE 15, 1
PRINT "                                              "
LOCATE 15, 1
ndts = 0
INPUT "  How many would you like to sell? ", ndts

IF utut = weed THEN
  IF weed < ndts THEN
    PRINT ""
    PRINT "  You don't have that many! Moron!"
    PRINT ""
    GetPress
    GOTO sellhm
  END IF
END IF
IF utut = crack THEN
  IF crack < ndts THEN
    PRINT ""
    PRINT "  You don't have that many! Moron!"
    PRINT ""
    GetPress
    GOTO sellhm
  END IF
END IF

IF utut = coke THEN
  IF coke < ndts THEN
    PRINT ""
    PRINT "  You don't have that many! Moron!"
    PRINT ""
    GetPress
    GOTO sellhm
  END IF
END IF

money = (money + (price * ndts))
IF ddc% = 1 THEN
  weed = weed - ndts
  PRINT ""
  PRINT "You just sold"; ndts; "units of weed for $"; (price * ndts)
  GetPress
  GOTO 601
END IF
IF ddc% = 2 THEN
  crack = crack - ndts
  PRINT ""
  PRINT "You just sold"; ndts; "units of crack for $"; (price * ndts)
  GetPress
  GOTO 601
END IF
IF ddc% = 3 THEN
  coke = coke - ndts
  PRINT ""
  PRINT "You just sold"; ndts; "units of cocaine for $"; (price * ndts)
  GetPress
  GOTO 601
END IF
leavech:
END SUB

SUB gangwar
END SUB

SUB GetPress
PRINT ""
PRINT " < Press a key >"
DO
aa$ = INKEY$
LOOP UNTIL aa$ <> ""
END SUB

SUB GetPressb
DO
aa$ = INKEY$
LOOP UNTIL aa$ <> ""
END SUB

SUB GetPressc
PRINT ""
PRINT " < Press a key >"
mapkey:
DO
aa$ = INKEY$
IF aa$ = "8" OR aa$ = "6" OR aa$ = "4" OR aa$ = "2" THEN GOTO mapkey
LOOP UNTIL aa$ <> ""
END SUB

SUB gunshack
1001
CLS
PRINT ""
PRINT "        **     Little Johnnys Gun Shack     **"
PRINT "======================================================"
PRINT ""
PRINT "                 Whadda ya want?"
PRINT ""
PRINT "         [1] A Gun ................. $ 1,200"
PRINT "         [2] Bullets (boxes of 50) . $ 100"
PRINT "         [3] Bullet Proof Vest ..... $ 1,000"
PRINT "         [4] An Uzi!!............... $ 1,000,000"
PRINT "         [5] A Grenade ............. $ 3,000"
PRINT "         [6] A Missile Launcher .... $ 10,000,000"
PRINT "         [7] A Missile ............. $ 100,000"
PRINT "         [8] Leave"
PRINT ""
PRINT " (answer using number)"
stopeight:
IF INKEY$ = "8" THEN GOTO stopeight
DO
INPUT "         ? ", r%
LOOP UNTIL r% > 0 AND r% < 9
IF r% = 8 THEN GOTO leavegs

IF r% = 1 AND money < 1200 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 2 AND money < 100 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 3 AND money < 1000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 4 AND money < 1000000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 5 AND money < 3000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 6 AND money < 10000000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 7 AND money < 100000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF

IF r% = 1 THEN PRINT "        You can afford"; INT(money / 1200)
IF r% = 2 THEN PRINT "        You can afford"; INT(money / 100)
IF r% = 3 THEN PRINT "        You can afford"; INT(money / 1000)
IF r% = 4 THEN PRINT "        You can afford"; INT(money / 1000000)
IF r% = 5 THEN PRINT "        You can afford"; INT(money / 3000)
IF r% = 6 THEN PRINT "        You can afford"; INT(money / 10000000)
IF r% = 7 THEN PRINT "        You can afford"; INT(money / 100000)

INPUT "        How many would you like?  ", hmw
IF r% = 1 AND money < hmw * 1200 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 2 AND money < hmw * 100 THEN
  PRINT ""
  PRINT "        You don't have enough money"
  GetPress
  GOTO 1001
END IF
IF r% = 5 AND money < hmw * 3000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  GetPress
  GOTO 1001
END IF
IF r% = 1 THEN
  CLS
  PRINT ""
  PRINT "                  **  Buying Guns  **"
  PRINT "======================================================="
  PRINT ""
  PRINT "        Allright thats $"; (hmw * 1200); " please"
  PRINT ""
  PRINT "< Press a key to Pay >"
  GetPressb
  money = (money - hmw * 1200)
  guns = (guns + hmw)
  GOTO 1010
END IF
IF r% = 2 THEN
  CLS
  PRINT ""
  PRINT "                **  Buying Bullets  **"
  PRINT "======================================================="
  PRINT ""
  PRINT "        That'll be $"; (hmw * 100)
  PRINT ""
  PRINT "< Press a key to Pay >"
  GetPressb
  money = (money - hmw * 100)
  bullets = (bullets + hmw * 50)
  PRINT "    You now have"; bullets; "bullets"
  GetPress
  GOTO 1010
END IF
IF r% = 3 THEN
  PRINT ""
  PRINT "           We're all out of bullet proof vests"
  GetPress
  GOTO 1001
END IF
'add a friend do refer for vest. late in game. wont work in gang war
IF r% = 5 THEN
  CLS
  PRINT ""
  PRINT "                **  Buying Grenades  **"
  PRINT "======================================================="
  PRINT ""
  PRINT "        Alright thats $"; (hmw * 3000); " please"
  PRINT ""
  PRINT " < Press a key to Pay >"
  GetPressb
  PRINT "      These are great for killin' a few cops!"
  GetPress
  money = (money - hmw * 3000)
  grenades = (grenades + hmw)
  GOTO 1010
END IF

IF r% = 4 AND money < hmw * 1000000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  PRINT "       Uzis are only for real Pimps!!"
  GetPress
  GOTO 1001
END IF
IF r% = 4 THEN
  CLS
  PRINT ""
  PRINT "                  **  Buying Uzis  **"
  PRINT "======================================================="
  PRINT ""
  PRINT "        Alright thats $"; (hmw * 1000000); " please"
  PRINT ""
  PRINT " < Press a key to Pay >"
  GetPressb
  PRINT "        Don't forget to buy a lot of bullets!!"
  PRINT "                 you'll need 'em!!"
  GetPress
  money = (money - hmw * 1000000)
  uzis = (uzis + hmw)
  GOTO 1010
END IF
IF r% = 6 AND money < hmw * 10000000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  PRINT "    Missiles are only for extreme Pimps!!"
  GetPress
  GOTO 1001
END IF
IF r% = 6 THEN
  CLS
  PRINT ""
  PRINT "           **  Buying Missle Launchers  **"
  PRINT "======================================================="
  PRINT ""
  PRINT "        Alright thats $"; (hmw * 10000000); " please"
  PRINT ""
  PRINT " < Press a key to Pay >"
  GetPressb
  PRINT "        Don't forget to buy a few missiles!!"
  PRINT "                 you'll need 'em!!"
  GetPress
  money = (money - hmw * 10000000)
  mislaunch = (mislaunch + hmw)
  GOTO 1010
END IF
IF r% = 7 AND money < hmw * 100000 THEN
  PRINT ""
  PRINT "        You don't have enough money."
  PRINT "    Missiles are only for extreme Pimps!!"
  GetPress
  GOTO 1001
END IF
IF r% = 7 THEN
  CLS
  PRINT ""
  PRINT "                **  Buying Missiles  **"
  PRINT "======================================================="
  PRINT ""
  PRINT "        Alright thats $"; (hmw * 100000); " please"
  PRINT ""
  PRINT " < Press a key to Pay >"
  GetPressb
  PRINT "        Don't forget to buy a missle launcher!!"
  PRINT "           without it, these are worthless!!"
  GetPress
  money = (money - hmw * 100000)
  missiles = (missiles + hmw)
  GOTO 1010
END IF

1010
CLS
PRINT ""
PRINT "       **     Little Johnnys Gun Shack     **"
PRINT "======================================================"
PRINT ""
PRINT ""
PRINT ""
DO
INPUT "       Will that be all today?   (Y or N)  ", GS$
GS$ = UCASE$(GS$)
LOOP UNTIL GS$ = "Y" OR GS$ = "N"
IF GS$ = "Y" THEN GOTO leavegs
IF GS$ = "N" THEN GOTO 1001

leavegs:

END SUB

SUB infobooth
1401
CLS
PRINT ""
PRINT "     **  Big Johnny's info Booth  **"
PRINT "========================================="
PRINT ""
PRINT "         Would you like to..."
PRINT ""
PRINT "   [1] Look at your stats"
PRINT "   [2] Look at the Thunder Bolts stats"
PRINT "   [3] Talk to the man behind the counter"
PRINT "   [4] Leave"
PRINT ""
PRINT "(answer using number)"
noeight:
IF INKEY$ = "8" THEN GOTO noeight
DO
INPUT "  ? ", bjib
LOOP UNTIL bjib > 0 AND bjib < 5
IF bjib = 4 THEN GOTO leaveib
IF bjib = 3 THEN
  CLS
  PRINT ""
  PRINT "     **  Big Johnny's info Booth  **"
  PRINT "========================================="
  PRINT ""
  PRINT "     I'll give you a hint for $5,000"
  PRINT "   Would you like to buy one? (Y or N)"
  DO
  INPUT "                ? ", buyasec$
  buyasec$ = UCASE$(buyasec$)
  LOOP UNTIL buyasec$ = "Y" OR buyasec$ = "N"
  IF buyasec$ = "N" THEN PRINT "": PRINT "        See you later then.": GetPress: GOTO 1401
  IF money < 5000 THEN
    PRINT ""
    PRINT " I'm sorry, you don't have enough money"
    PRINT "Here's a free hint, come back with cash!!"
    GetPress
    GOTO 1401
  END IF
  RANDOMIZE TIMER
  whichsec% = INT(RND * 30)
  IF whichsec% = 0 THEN
    PRINT "     Avoid selling drugs at the crack house"
    PRINT "   because they offer less than market value."
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 1 THEN
    PRINT "Ask the man at the bar this (exactly!)"
    PRINT ""
    PRINT "           What do you have"
    PRINT ""
    PRINT "  He will then help you out a little."
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 2 THEN
    PRINT "When riding a bicycle, it is always a good idea to wear a helmet!"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 3 THEN
    PRINT "If the cashier at the Pick n' Save asks you if you"
    PRINT "  want to buy some cheep weed, always say yes."
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 4 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 5 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 6 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 7 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 8 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 9 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 10 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 11 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 12 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 13 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 14 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 15 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 16 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 17 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 18 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 19 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 20 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 21 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 22 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 23 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 24 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 25 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 26 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 27 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 28 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
  IF whichsec% = 29 THEN
    PRINT "Put a hint here"
  
    PRINT ""
    PRINT ""
    PRINT " Thanks for dealin' with Big Johnnys info booth."
    PRINT "    Press a key to go back to the info booth."
    GetPressb
    money = (money - 5000)
    GOTO 1401
  END IF
END IF

IF bjib = 1 THEN
  CLS
  PRINT ""
  PRINT "     **  Big Johnny's info Booth  **"
  PRINT "========================================="
  PRINT ""
  PRINT "  Money .............. $"; money
  PRINT "  Units of Weed ......"; weed
  PRINT "  Units of Crack ....."; crack
  PRINT "  Units of Cocaine ..."; coke
  PRINT "  Guns ..............."; guns
  PRINT "  Uzis ..............."; uzis
  PRINT "  Bullets ............"; bullets
  PRINT "  Missle Launchers ..."; mislaunch
  PRINT "  Missiles ..........."; missiles
  PRINT "  Grenades ..........."; grenades
  PRINT ""
  PRINT "  Your gang, ' "; gngname$; " ' now has"; INT(members); "members"
  PRINT ""
  PRINT "  You have"; lives; "lives left"
  PRINT "  You have"; damage; "gunshot wounds (10 and you die)"
  PRINT ""
  PRINT "  It's your      day of Pimping"
  IF day% < 10 THEN LOCATE 21, 13: PRINT day%:  ELSE LOCATE 22, 12: PRINT day%
  LOCATE 21, 15
  IF day% = 1 OR day% = 21 OR day% = 31 OR day% = 41 OR day% = 51 THEN PRINT "st"
  IF day% = 2 OR day% = 22 OR day% = 32 OR day% = 42 OR day% = 52 THEN PRINT "nd"
  IF day% = 3 OR day% = 23 OR day% = 33 OR day% = 43 OR day% = 53 THEN PRINT "rd"
  IF day% > 3 AND day% < 21 THEN PRINT "th"
  IF day% > 23 AND day% < 31 THEN PRINT "th"
  IF day% > 33 AND day% < 41 THEN PRINT "th"
  IF day% > 43 AND day% < 51 THEN PRINT "th"
  IF day% > 53 AND day% < 61 THEN PRINT "th"
  GetPress
  GOTO 1401
END IF
IF bjib = 2 THEN
  CLS
  PRINT ""
  PRINT "     **  Big Johnny's info Booth  **"
  PRINT "========================================="
  PRINT ""
  PRINT "  Here are the Thunder Bolts stats"
  PRINT ""
  PRINT "  Members ............"; INT(thunder)
  PRINT ""
  PRINT "  Guns ..............."; INT(thunguns)
  PRINT "  Bullets ............"; INT(thunbullets)
  PRINT "  Uzis ..............."; INT(thunuzis)
  PRINT "  Missle Launchers ..."; INT(thunmislaunch)
  PRINT "  Missiles ..........."; INT(thunmissiles)
  PRINT "  Grenades ..........."; INT(thungrenades)
  GetPress
  GOTO 1401
END IF

leaveib:
END SUB

SUB instructions
FOR col = 0 TO 15
 CLS
 LOCATE 2, 22
 COLOR col
 PRINT "**  Instructions  **"
 PRINT "=============================================================="
 looper = 0
 DO WHILE looper < 500
 looper = looper + 1
 LOOP
NEXT col
COLOR 7
PRINT ""
PRINT "This is a game of wheelin' and dealin'.  You are an inner city Pimp"
PRINT "that holds a very small portion of the drug market. You Start the game"
PRINT "with only 5 units of crack, $1000 and a gun with 10 bullets. Your only "
PRINT "rivals are the Thunder Bolts, a local gang. They are hard core! don't"
PRINT "mess around with them!! In the city there are many shops, and the"
PRINT "Thunder Bolts Headquarters. The goal of the game is to run the Thunder"
PRINT "Bolts out of town. To do this, you are going to have to assemble a gang"
PRINT "of their size. You will get new gang members now and then when you do"
PRINT "things right. People will also join your gang if you get a lot of money. "
PRINT "When you think your gang is big enough, you can call a gang war, and"
PRINT "if you win the war, you win the game. In order to win the war you will"
PRINT "need a lot of guns. You can buy these at the gun shop, but they are"
PRINT "very expensive. It's a lot easier just to kill someone with a gun and"
PRINT "take it from them, but don't get caught by the cops, or your pimpin'"
PRINT "days are over."
20
GetPress
GOTO 30
30
FOR col = 0 TO 15
 CLS
 LOCATE 2, 22
 COLOR col
 PRINT "**  Instructions  **"
 PRINT "=============================================================="
 looper = 0
 DO WHILE looper < 500
 looper = looper + 1
 LOOP
NEXT col
COLOR 7
PRINT ""
PRINT "You will not be able to make it through the game alone. You"
PRINT "will need to seek advice, hints, weapons etc. from every person"
PRINT "You deal with.  You will have to gain Contacts, People who can"
PRINT "get things for you, such as information.  It is very difficult"
PRINT "to gain the trust of these people and you will have to prove"
PRINT "to them that you are not an undercover cop, before they so"
PRINT "much as even look at you. To gain their trust, you must make"
PRINT "friends with one of their friends. Their friend will then tell"
PRINT "You a code word, or phrase, that will convince the person"
PRINT "that you are not a cop. Once that is established the vendor"
PRINT "will let you buy something from his side buisness, such as guns,"
PRINT "drugs, or let you into his backroom, Where the big deals are"
PRINT "made, and casinos often find a home. Some of the vendors need"
PRINT "street dealers, and will employ you, but if you don't meet"
PRINT "the quota, odds are that you are dead. So if you don't think"
PRINT "You can make the quota, don't take the job."
GetPress
GOTO 33
32
FOR col = 0 TO 15
 CLS
 LOCATE 2, 6
 COLOR col
 PRINT "**    Here are a few tips to get you started.    **"
 PRINT "=============================================================="
 looper = 0
 DO WHILE looper < 500
 looper = looper + 1
 LOOP
NEXT col
COLOR 7
PRINT ""
PRINT "  [1]  Make a lot of friends (You'll need them) "
PRINT "  [2]  Stay away from the Thunder Bolts Headquarters until"
PRINT "          you are ready to fight!  The Thunder Bolts are very"
PRINT "          teritorial and will kill anything unwanted that "
PRINT "          comes onto their land! "
PRINT "  [3]  Get involved in drug dealing.  This gets your name out"
PRINT "          on the street and will help you make contacts."
PRINT "          (You can also make a lot of money!!)"
PRINT "  [4]  Think like a Pimp.  Don't do anything that you don't"
PRINT "          think a Pimp would do.  Be suspicious of everybody."
PRINT ""
GetPress
GOTO 41414
33
FOR col = 0 TO 15
 CLS
 LOCATE 2, 22
 COLOR col
 PRINT "**  Instructions  **"
 PRINT "=============================================================="
 looper = 0
 DO WHILE looper < 500
 looper = looper + 1
 LOOP
NEXT col
COLOR 7
PRINT ""
PRINT "Also, When you are employed as a dealer, don't go back to where"
PRINT "you were hired, until you have secured all the money you owe! These"
PRINT "guys don't mess around and will have their thugs come and get you "
PRINT "Within' a few days.  If your gang is big enough, you might be able"
PRINT "to fight them off, but I suggest you don't mess around with the drug"
PRINT "lords money."
GetPress
GOTO 32
41414
END SUB

SUB opening1
SCREEN 12
CLS
mkeb = 0
mkeb:
FOR col = 1 TO 15
  COLOR col
  LOCATE 7, 1
  PRINT "           Robert Fuller Presents:                                        "
  a = 0: DO: a = a + 1: LOOP UNTIL a > 200
  a$ = INKEY$
  IF a$ <> "" THEN GOTO dontbeep
NEXT col
mkeb = mkeb + 1
IF mkeb < 4 THEN GOTO mkeb

COLOR 3
LOCATE 11, 1
PRINT "                                                      �    "
PRINT "                                                      �       "
PRINT "                                                      �      "
PRINT "                                                      �"
PRINT "                                                      �    "
PRINT "                                                      ����         "
COLOR 14
LOCATE 11, 1
PRINT "                                                 �� "
PRINT "                                                     "
PRINT "                                               �    �"
PRINT "                                               ����Ĵ"
PRINT "                                               �    �"
PRINT "                                               �    �"
COLOR 13
LOCATE 11, 1
PRINT "                                        �    �"
PRINT "                                        �    �"
PRINT "                                        �    �"
PRINT "                                        �    �"
PRINT "                                        �    �"
PRINT "                                          ��  "
COLOR 12
LOCATE 11, 1
PRINT "                                  �����"
PRINT "                                    � "
PRINT "                                    � "
PRINT "                                    � "
PRINT "                                    � "
PRINT "                                    � "
COLOR 11
LOCATE 11, 1
PRINT "                            ���Ŀ"
PRINT "                            �   �"
PRINT "                            �����"
PRINT "                            �    "
PRINT "                            �   �"
PRINT "                            �   �"
COLOR 10
LOCATE 11, 1
PRINT "                        ���"
PRINT "                         � "
PRINT "                         � "
PRINT "                         � "
PRINT "                         � "
PRINT "                        ���"
COLOR 9
LOCATE 11, 1
PRINT "               �      �"
PRINT "                       "
PRINT "                       "
PRINT "                       "
PRINT "                       "
PRINT "                       "
COLOR 2
LOCATE 18, 1
PRINT "                                          ���Ŀ  "
PRINT "                                          �   �   "
PRINT "                                          �����  "
PRINT "                                          � "
PRINT "                                          � "
PRINT "                                          �  "
COLOR 7
LOCATE 18, 1
PRINT "                                  �     �"
PRINT "                                  �     �"
PRINT "                                  �     �"
PRINT "                                  �     �"
PRINT "                                  �     �"
PRINT "                                  �     �"
COLOR 6
LOCATE 18, 1
PRINT "                              ���"
PRINT "                               � "
PRINT "                               � "
PRINT "                               � "
PRINT "                               � "
PRINT "                              ���"
COLOR 5
LOCATE 18, 1
PRINT "                        ���Ŀ"
PRINT "                        �   �"
PRINT "                        �����"
PRINT "                        �  "
PRINT "                        �  "
PRINT "                        �  "
LOCATE 26, 1
PRINT "                      < Press any key to start >"
COLOR 9
LINE (124, 168)-(152, 247) 'v
LINE (124, 169)-(152, 248)
LINE (152, 247)-(180, 168) 'v
LINE (152, 248)-(180, 169)
COLOR 11
LINE (240, 200)-(259, 225) 'r
LINE (240, 201)-(259, 226)
COLOR 13
LINE (324, 240)-(336, 247)  'u
LINE (324, 241)-(336, 247)
LINE (352, 247)-(363, 240)  'u
LINE (352, 247)-(363, 241)
COLOR 14
LINE (379, 193)-(391, 168)  'a
LINE (379, 194)-(391, 169)
LINE (407, 168)-(419, 193)  'a
LINE (407, 169)-(419, 194)
COLOR 7
LINE (280, 280)-(300, 320)  'm
LINE (280, 281)-(300, 321)
LINE (300, 320)-(320, 280)  'm
LINE (300, 321)-(320, 281)













PLAY "MNT200L4O1BL8EBL4>CL8<E>CL4C+L8<E>C+L4CL8<E>CL4<BL8EB"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L4>CL8<E>CL4C+L8<E>C+L4CL8<E>C>EL16F+F+L8F+L4F+.L8<EE"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "E>EL16GGL8GL4G.L8<F+F+F+>EL16F+F+L8F+L4F+.L8<EEE>EL16G"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "GL8GL4G.L8<F+F+F+>EL16F+F+L8F+L4F+.L8<EEE>EL16GGL8GL4G."
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8<F+F+EO4D+L64<BL8>DL2DL64O2GL8BL64F+L8AL32G.L1B.L8E"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L16F+F+L8F+L4F+.L8>EEE<EL16GGL8GL4G.L8>F+F+F+<EL16F+F+"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8F+L4F+.L8>EEE<EL16GGL8GL4G.L8>F+F+F+<EL16F+F+L8F+L4F+."
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8>EEE<EL16GGL8GL4G.L8>F+F+E>D+L64<BL8>DL2DL64<GL8BL64F+"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8AL32G.L1B.L4O1BL8EBL4>CL8<E>CL4C+L8<E>C+L4CL8<E>CL4<B"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8EBL4>CL8<E>CL4C+L8<E>C+L4CL8<E>C>EL64EL4GL8>D+L64<G"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "BL4>D.L8<GL64FL8A+L64GL2B.L8GL32AGL4F+.L8<B>EC+L2C+L64<G"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "BL8>F+.P16L64<GBL4>F+L8EL64EL4GL8>D+L64<GBL4>D.L8<GL64F"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8A+L64GL2B.L8GL32AGL4F+.L8<B>D+EL2EL64<GBL8>C+.P16L64<G"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "BL4>C+L8EL64EL4GL8>D+L64<GBL4>D.L8<GL64FL8A+L64GL2B.L8G"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L32AGL4F+.L8<B>EC+L2C+L64<GBL8>F+.P16L64<GBL4>F+L8EL64E"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L4GL8>D+L64<GBL4>D.L8<GL64FL8A+L64GL2B.L8GL32AGL4F+.L8<B"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY ">D+EL2EL64<GBL8>C+.P16L64<GBL4>C+L64<GBL8>EL64<GBL4>E"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L64<GBL8>EL64<A>D+L8F+.L16EL64<A>D+L4F+L64<B>EL8GL64<B"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY ">EL4GL64<B>EL8GL64<A>D+L8F+.L16EL64<A>D+L4F+L64<GBL8>E"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L64<GBL4>EL64<GBL8>EL64<A>D+L8F+.L16EL64<A>D+L4F+L64<B"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY ">EL8GL64<B>EL4GL64<B>EL8GL64<A>D+L8F+.L16EL64<A>D+L4F+"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L64C+EGL8BL64C+EGL8BP8L2O1BL8BL64O3C+EGL8BL64C+EGL8BP8"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L4O1B.BL64O3C+EGL16BL8BL16BL8BL64C+EGL8BL4O1BL8EBL4>C"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8<E>CL4C+L8<E>C+L4CL8<E>C>EL16F+F+L8F+L4F+.L8EEEEL16G"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "GL8GL4G.L8F+F+F+EL16F+F+L8F+L4F+.L8EEEEL16GGL8GL4G.L8F+"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "F+F+EL16F+F+L8F+L4F+.L8EEEEL16GGL8GL4G.L8F+F+E>D+L64<B"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L8>DL2DL64GL8BL64F+L8AL32G.L1B.P16L8O2EL4GL8>D+L4DL8<G"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "BB>F+L4FL8<BL4>DL8A+L4AL8FAL4AL8D+DDP8P4L64O1EB>GB>C+"
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
PLAY "L2F+."
ddd$ = INKEY$: IF ddd$ <> "" THEN GOTO 4141
4141
dontbeep:
END SUB

SUB opening2
db = 5
2
nobomb$ = INKEY$
IF nobomb$ <> "" THEN GOTO creditstart
CLS
LOCATE 10, 30
PRINT "���������������Ŀ "
LOCATE 11, 30
PRINT "� ��� �\  � ��� � "
LOCATE 12, 30
PRINT "�  �  � � �  �  � "
LOCATE 13, 30
PRINT "�  �  �  \�  �  � "
LOCATE 14, 30
PRINT "����������������� "
IF db = 5 THEN LOCATE 5, 30: PRINT "����������������� ": LOCATE 6, 30: PRINT "        �   ": LOCATE 7, 30: PRINT "        �   ": LOCATE 8, 30: PRINT "        �   ": LOCATE 9, 30: PRINT "        �    "
IF db = 4 THEN LOCATE 6, 30: PRINT "����������������� ": LOCATE 7, 30: PRINT "        �   ": LOCATE 8, 30: PRINT "        �   ": LOCATE 9, 30: PRINT "        �   "
IF db = 3 THEN LOCATE 7, 30: PRINT "����������������� ": LOCATE 8, 30: PRINT "        �   ": LOCATE 9, 30: PRINT "        �   "
IF db = 2 THEN LOCATE 8, 30: PRINT "����������������� ": LOCATE 9, 30: PRINT "        �   "
IF db = 1 THEN LOCATE 9, 30: PRINT "����������������� ":
3 db = db - 1
a = 0: DO WHILE a < 4000: a = a + 1: LOOP
IF db = 0 THEN GOTO 4
GOTO 2
4
SCREEN 1
bomb = 0
DO WHILE bomb < 3
FOR col = 0 TO 15
 COLOR col
 NEXT col
bomb = bomb + 1
LOOP
CLS
creditstart:
SCREEN 0: WIDTH 80
FOR col = 0 TO 15
 CLS
 LOCATE 2, 22
 COLOR col
 PRINT "**  Virtual Pimp  **"
 PRINT "=============================================================="
 looper = 0
 DO WHILE looper < 500
 looper = looper + 1
 LOOP
NEXT col
CLS
COLOR 15
LOCATE 2, 26
PRINT "Virtual Pimp"
COLOR 7
LOCATE 3, 1
PRINT "=============================================================="
q% = 22
W% = 23
e% = 40
r% = 41
c% = 24
v% = 39
col = 4
5
COLOR col
LOCATE 2, q%
PRINT "*"
LOCATE 2, r%
PRINT "*"
LOCATE 2, c%
PRINT " "
LOCATE 2, v%
PRINT " "
IF col = 4 THEN col = col + 10: GOTO 9
IF col = 14 THEN col = col - 10
9 COLOR col
LOCATE 2, W%
PRINT "*"
LOCATE 2, e%
PRINT "*"
q% = q% - 1
W% = W% - 1
e% = e% + 1
r% = r% + 1
c% = c% - 1
v% = v% + 1
a = 0
DO WHILE a < 500
a = a + 1
LOOP
IF q% = 0 THEN GOTO 6
GOTO 5
6 CLS
COLOR 15
LOCATE 2, 26
PRINT "Virtual Pimp"
COLOR 7
LOCATE 3, 1
PRINT "=============================================================="
LOCATE 4, 1
COLOR 7
PRINT "                      * --------------- *"
PRINT "                      | Code Written by |"
PRINT "                      * --------------- *"
PRINT ""
PRINT "              Robert '         ' Fuller         Gamer730@aol.com "
PRINT ""
PRINT ""
PRINT "                   Do You need Instructions?"
PRINT " (If this is your first time playing, You      instructions!!)"
PRINT ""
PRINT "                           (Y or N)"
COLOR 4
LOCATE 8, 23
PRINT "Zero Cool"
LOCATE 13, 43
COLOR 15
PRINT "NEED"
COLOR 7

END SUB

SUB picknsave
801
CLS
PRINT ""
PRINT " **     Big Johnnies Neighborhood Pick & Save    **"
PRINT "======================================================"
PRINT ""
PRINT "               Whadda ya want to do?"
PRINT ""
PRINT "         [1] Talk to Cashier"
PRINT "         [2] Buy some Groceries"
PRINT "         [3] Talk to Customer"
PRINT "         [4] Buy some Beer"     ' kind of stupid
PRINT "         [5] Rob the Store"
PRINT "         [6] Walk into the back room"
PRINT "         [7] Leave the Store"
PRINT ""
PRINT " (answer using number)"

cleartwo:
IF INKEY$ = "2" THEN GOTO cleartwo
DO
INPUT "        ? ", s%
LOOP UNTIL s% > 0 AND s% < 8

IF s% = 1 THEN
  PRINT ""
  PRINT "Would you like some cheep weed?"
  PRINT "< Press a key to acknowledge cashier >"
  GetPressb
  GOTO 810
END IF

IF s% = 2 AND money < 100 THEN
  PRINT ""
  PRINT "        You don't have enough money"
  GetPress
  GOTO 801
END IF

IF s% = 2 THEN
  PRINT ""
  PRINT "        That'll be 100 dollars"
  PRINT ""
  PRINT "        < Press a key to Pay >"
  GetPressb
  PRINT "    You Bought 50 bullets and some "
  PRINT "   bandaids to heal 1 of your wounds"
  GetPress
  money = (money - 100)
  bullets = (bullets + 50)
  damage = damage - 1
  IF damage < 0 THEN damage = 0
  GOTO 801
END IF

IF s% = 3 THEN
  CLS
  PRINT ""
  PRINT "           **    Talking to Customer    **"
  PRINT "====================================================="
  PRINT ""
  PRINT ""
  PRINT "       What the fuck do you want?"
  INPUT "       ?", CODEA$
  CODEA$ = UCASE$(CODEA$)
  IF CODEA$ = "STEVE SENT ME" THEN
    PRINT "   You must be alright If you're friends with Steve."
    PRINT "   My name's Eric.  Lets go to my casino in the back."
    GetPress
    eric = 1
    casino
    CLS
    PRINT ""
    PRINT "           **    Talking to Customer    **"
    PRINT "====================================================="
    PRINT ""
    PRINT "        Hope you had fun, come back any time!"
    GetPress
    GOTO getshot
  END IF
  PRINT " Get out of my face! come back when you got some friends!"
  GetPress
  GOTO 801
END IF

IF s% = 4 AND money < 5 THEN
  PRINT ""
  PRINT "        You don't have enough money"
  GetPress
  GOTO 801
END IF

IF s% = 5 AND guns < 1 THEN
  PRINT ""
  PRINT "        You don't have a gun."
  GetPress
  GOTO 801
END IF

IF s% = 4 THEN
  PRINT ""
  PRINT "          That'll be five dollars"
  PRINT ""
  PRINT "          < Press a key to Pay >"
  GetPressb
  PRINT "     The Cashier slipped a case of bullets"
  PRINT " And a large bandage to heal one of your wounds"
  PRINT "            Into the Grocery bag."
  money = (money - 5)
  bullets = (bullets + 50)
  damage = (damage - 1)
  IF damage < 0 THEN damage = 0
  GOTO 801
END IF
IF s% = 5 THEN GOTO 830
IF s% = 7 THEN GOTO leaveps
IF s% = 6 THEN
  IF eric = 1 THEN
    PRINT ""
    PRINT "  I remember you, you're Eric's friend"
    PRINT " come on in. Hope you brought some cash!"
    GetPress
    casino
  END IF
  PRINT ""
  PRINT " What the Hell do you think you're doin' punk!"
  INPUT "       ?", CODEA$
  CODEA$ = UCASE$(CODEA$)
  IF CODEA$ = "STEVE SENT ME" THEN
    PRINT "   You must be alright If you're friends with Steve."
    PRINT "   My name's Eric.  Lets go to my casino in the back."
    GetPress
    eric = 1
    casino
  END IF
  PRINT "       We don't like cops around here."
  INPUT "           Are you a cop", copyn$
  copyn$ = UCASE$(copyn$)
  IF copyn$ = "YES" THEN
    PRINT "         Well, I don't like cops."
    PRINT "  BANG, the bouncer shoots you in the head"
    GetPress
    bouncer = 1
    GOTO getshot
  END IF
  PRINT ""
  PRINT "               Ya, whatever."
  PRINT " BANG, the bouncer obviosly didn't believe you,"
  PRINT "         and shot you in the head!"
  GetPress
  bouncer = 1
  GOTO getshot
END IF


810 CLS
PRINT ""
PRINT ""
PRINT "    **   Big Johnnys Neighborhood Pick & Save  **"
PRINT "======================================================"
PRINT ""
PRINT "               Whadda ya say?"
PRINT ""
PRINT "         [1] Yes"
PRINT "         [2] No"
PRINT ""
PRINT " (answer using number)"
INPUT "        ? ", l%
IF l% = 1 THEN
  PRINT ""
  PRINT "Meet me in the frozen food section!"
  GetPress
  GOTO 820
END IF
IF l% = 2 THEN
  PRINT ""
  PRINT "It's your loss!"
  GetPress
  GOTO 801
END IF


820 CLS
PRINT "I got five units for $200"
GetPress
weed = (weed + 5)
money = (money - 200)                        'this kind of sucks!!
PRINT ""
PRINT "          The Deal goes smoothly."
GetPress
GOTO 801

830 CLS
RANDOMIZE TIMER
rob% = INT(RND * 10)
IF rob% = 5 THEN
  PRINT "         Big Johnny sees you and busts a cap on you"
  damage = (damage + 1)
  IF damage >= 10 THEN bouncer = 1: GOTO getshot ELSE GOTO 801
END IF
IF rob% = 1 OR rob% = 3 OR rob% = 4 OR rob% = 6 OR rob% = 7 OR rob% = 8 OR rob% = 9 OR rob% = 10 THEN
  PRINT "           Nobody stops you."
  PRINT "            You get $ 500 "
  money = money + 500
  GetPress
  GOTO leaveps
END IF
IF rob% = 2 THEN
  PRINT "  You forget your gun and Big Johnny calls the cops."
  GetPress
  joncops = 1
  GOTO getshot
END IF
leaveps:
getshot:
END SUB

SUB store
a = 0: DO WHILE a < 5000: a = a + 1: LOOP
CLS
PRINT ""
PRINT ""
PRINT ""
PRINT "                                                               "
PRINT "                                  �����������������������Ŀ         "
PRINT "          �����������������������͵                       �         "
PRINT "          ��������������������Ŀ  �    ���Ŀ     ���Ŀ    �         "
PRINT "          �                    �  �    ���Ĵ     ���Ĵ    �         "
PRINT "          �                    �  �    �����     �����    �         "
PRINT "          ����������������������  �                       �         "
PRINT "                                  �    ���Ŀ     ���Ŀ    �         "
PRINT "                                  �    ���Ĵ     ���Ĵ    �         "
PRINT "                                  �    �����     �����    �         "
PRINT "                                  �                       �         "
PRINT "                                  �                       �         "
PRINT "��������������������������������������������������������������������"
END SUB

SUB walkin
h = 18
goin:
IF h >= 5 AND h < 32 THEN
  LOCATE 12, h - 1: PRINT "   "
  LOCATE 13, h - 1: PRINT "    "
  LOCATE 14, h - 1: PRINT "    "
  LOCATE 15, h - 1: PRINT "     "
END IF
IF h >= 5 AND h < 31 THEN
  LOCATE 12, h: PRINT "  _"
  LOCATE 13, h: PRINT " (_)"
  LOCATE 14, h: PRINT " \�/"
  LOCATE 15, h: PRINT "_/^\_"
  a = 0: DO WHILE a < 1100: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF

IF h = 31 THEN
  LOCATE 12, h: PRINT "  _"
  LOCATE 13, h: PRINT " (_)"
  LOCATE 14, h: PRINT "  ��"
  LOCATE 15, h: PRINT "  �_"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 32 THEN
  LOCATE 12, 30: PRINT "  _ ڴ "
  LOCATE 13, 30: PRINT " (_)�� "
  LOCATE 14, 30: PRINT "  �ĳ� "
  LOCATE 15, 30: PRINT "  �_�� "
  LOCATE 16, 34: PRINT "��"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 33 THEN
  LOCATE 12, 29: PRINT "  _ �Ĵ "
  LOCATE 13, 29: PRINT " (_)� � "
  LOCATE 14, 29: PRINT "  �ĳ'� "
  LOCATE 15, 29: PRINT "  �_� � "
  LOCATE 16, 33: PRINT "���"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 34 THEN
  LOCATE 12, 28: PRINT "  _ ��Ĵ "
  LOCATE 13, 28: PRINT " (_)�  � "
  LOCATE 14, 28: PRINT "  �ĳ' � "
  LOCATE 15, 28: PRINT "  �_�  � "
  LOCATE 16, 32: PRINT "����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 35 THEN
  LOCATE 12, 27: PRINT "  _ ���Ĵ "
  LOCATE 13, 27: PRINT " (_)�   � "
  LOCATE 14, 27: PRINT "  �ĳ'  � "
  LOCATE 15, 27: PRINT "  �_�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 36 THEN
  LOCATE 12, 26: PRINT "  _  ���Ĵ "
  LOCATE 13, 26: PRINT " (_) �   � "
  LOCATE 14, 26: PRINT " \�/ �'  � "
  LOCATE 15, 26: PRINT "_/^\_�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 37 THEN
  LOCATE 12, 26: PRINT "   _ ���Ĵ "
  LOCATE 13, 26: PRINT "  (_)�   � "
  LOCATE 14, 26: PRINT "  \�/�'  � "
  LOCATE 15, 26: PRINT " _/^\�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 38 THEN
  LOCATE 12, 26: PRINT "    _���Ĵ "
  LOCATE 13, 26: PRINT "   (_�   � "
  LOCATE 14, 26: PRINT "   \��'  � "
  LOCATE 15, 26: PRINT "  _/^�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 39 THEN
  LOCATE 12, 26: PRINT "     ���Ĵ "
  LOCATE 13, 26: PRINT "    (�   � "
  LOCATE 14, 26: PRINT "    \�'  � "
  LOCATE 15, 26: PRINT "   _/�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 40 THEN
  LOCATE 12, 26: PRINT "     ���Ĵ "
  LOCATE 13, 26: PRINT "     �   � "
  LOCATE 14, 26: PRINT "     �'  � "
  LOCATE 15, 26: PRINT "    _�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 41 THEN
  LOCATE 12, 26: PRINT "     ���Ĵ "
  LOCATE 13, 26: PRINT "     �   � "
  LOCATE 14, 26: PRINT "     �'  � "
  LOCATE 15, 26: PRINT "     �   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 42 THEN
  LOCATE 12, 26: PRINT "      ��Ĵ "
  LOCATE 13, 26: PRINT "      �  � "
  LOCATE 14, 26: PRINT "      �' � "
  LOCATE 15, 26: PRINT "      �  � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 43 THEN
  LOCATE 12, 26: PRINT "       �Ĵ "
  LOCATE 13, 26: PRINT "       � � "
  LOCATE 14, 26: PRINT "       �'� "
  LOCATE 15, 26: PRINT "       � � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 44 THEN
  LOCATE 12, 26: PRINT "        ڴ "
  LOCATE 13, 26: PRINT "        �� "
  LOCATE 14, 26: PRINT "        �� "
  LOCATE 15, 26: PRINT "        �� "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF
IF h = 45 THEN
  LOCATE 12, 26: PRINT "         � "
  LOCATE 13, 26: PRINT "         � "
  LOCATE 14, 26: PRINT "         � "
  LOCATE 15, 26: PRINT "         � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h + 1
  GOTO goin
END IF

END SUB

SUB walkout
h = 45
goout:
IF h = 45 THEN
  LOCATE 12, 26: PRINT "         � "
  LOCATE 13, 26: PRINT "         � "
  LOCATE 14, 26: PRINT "         � "
  LOCATE 15, 26: PRINT "         � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 44 THEN
  LOCATE 12, 26: PRINT "        ڴ "
  LOCATE 13, 26: PRINT "        �� "
  LOCATE 14, 26: PRINT "        �� "
  LOCATE 15, 26: PRINT "        �� "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 43 THEN
  LOCATE 12, 26: PRINT "       �Ĵ "
  LOCATE 13, 26: PRINT "       � � "
  LOCATE 14, 26: PRINT "       �'� "
  LOCATE 15, 26: PRINT "       � � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 42 THEN
  LOCATE 12, 26: PRINT "      ��Ĵ "
  LOCATE 13, 26: PRINT "      �  � "
  LOCATE 14, 26: PRINT "      �' � "
  LOCATE 15, 26: PRINT "      �  � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 41 THEN
  LOCATE 12, 26: PRINT "     ���Ĵ "
  LOCATE 13, 26: PRINT "     �   � "
  LOCATE 14, 26: PRINT "     �'  � "
  LOCATE 15, 26: PRINT "     �   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 40 THEN
  LOCATE 12, 26: PRINT "     ���Ĵ "
  LOCATE 13, 26: PRINT "     �   � "
  LOCATE 14, 26: PRINT "     �'  � "
  LOCATE 15, 26: PRINT "    _�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 39 THEN
  LOCATE 12, 26: PRINT "     ���Ĵ "
  LOCATE 13, 26: PRINT "    (�   � "
  LOCATE 14, 26: PRINT "    \�'  � "
  LOCATE 15, 26: PRINT "   _/�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 38 THEN
  LOCATE 12, 26: PRINT "    _���Ĵ "
  LOCATE 13, 26: PRINT "   (_�   � "
  LOCATE 14, 26: PRINT "   \��'  � "
  LOCATE 15, 26: PRINT "  _/^�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 37 THEN
  LOCATE 12, 26: PRINT "   _ ���Ĵ "
  LOCATE 13, 26: PRINT "  (_)�   � "
  LOCATE 14, 26: PRINT "  \�/�'  � "
  LOCATE 15, 26: PRINT " _/^\�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 36 THEN
  LOCATE 12, 26: PRINT "  _  ���Ĵ "
  LOCATE 13, 26: PRINT " (_) �   � "
  LOCATE 14, 26: PRINT " \�/ �'  � "
  LOCATE 15, 26: PRINT "_/^\_�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 35 THEN
  LOCATE 12, 26: PRINT "   _ ���Ĵ "
  LOCATE 13, 26: PRINT "  (_)�   � "
  LOCATE 14, 26: PRINT "   �ĳ'  � "
  LOCATE 15, 26: PRINT "   �_�   � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 34 THEN
  LOCATE 12, 28: PRINT "  _ ��Ĵ "
  LOCATE 13, 28: PRINT " (_)�  � "
  LOCATE 14, 28: PRINT "  �ĳ' � "
  LOCATE 15, 28: PRINT "  �_�  � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 33 THEN
  LOCATE 12, 29: PRINT "  _ �Ĵ "
  LOCATE 13, 29: PRINT " (_)� � "
  LOCATE 14, 29: PRINT "  �ĳ'� "
  LOCATE 15, 29: PRINT "  �_� � "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 32 THEN
  LOCATE 12, 30: PRINT "  _ ڴ "
  LOCATE 13, 30: PRINT " (_)�� "
  LOCATE 14, 30: PRINT "  �ĳ� "
  LOCATE 15, 30: PRINT "  �_�� "
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 31 THEN
  LOCATE 12, h: PRINT "  _ �"
  LOCATE 13, h: PRINT " (_)�"
  LOCATE 14, h: PRINT "  �ĳ"
  LOCATE 15, h: PRINT "  �_�"
  LOCATE 16, 31: PRINT "�����"
  a = 0: DO WHILE a < 1500: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h = 30 THEN
  LOCATE 12, h: PRINT "  _  �"
  LOCATE 13, h: PRINT " (_) �"
  LOCATE 14, h: PRINT " \�/ �"
  LOCATE 15, h: PRINT "_/^\_�"
  a = 0: DO WHILE a < 1100: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF
IF h >= 20 AND h < 31 THEN
  LOCATE 12, h + 1: PRINT "   "
  LOCATE 13, h + 1: PRINT "    "
  LOCATE 14, h + 1: PRINT "    "
  LOCATE 15, h + 1: PRINT "     "
END IF

IF h >= 20 AND h < 30 THEN
  LOCATE 12, h: PRINT "  _"
  LOCATE 13, h: PRINT " (_)"
  LOCATE 14, h: PRINT " \�/"
  LOCATE 15, h: PRINT "_/^\_"
  a = 0: DO WHILE a < 1100: a = a + 1: LOOP
  h = h - 1
  GOTO goout
END IF

END SUB

