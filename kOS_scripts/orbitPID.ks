RUNONCEPATH("0:/lib/maneuverFunctions.ks").   

PARAMETER userAlt is 80000.
SET orbitAlt to userAlt - 4000.


LOCK THROTTLE to 1.0.
//LOCK STEERING to .

STAGE.

//SET MYSTEER TO PROGRADE.
//LOCK STEERING TO MYSTEER.

WHEN SHIP:MAXTHRUST = 0 THEN
{
    PRINT "Staging".
    STAGE.
    PRESERVE.
}

set loopPid to pidloop(0.03,0.01,0.02,-1,1).
set loopPid:setpoint to 0.

until APOAPSIS >= orbitAlt
{
    WAIT UNTIL APOAPSIS >= (orbitAlt).
    
    lock steering to up:vector*loopPid:update(time:seconds, eta:apoapsis). //the steering is going to be the up vector multiplied by the output of the pidLoop

    PRINT "heading to target".


    //UNTIL(APOAPSIS >= orbitAlt)
    //{
       // IF (ALTITUDE > orbitAlt)
        //{
          //  SET MYSTEER TO PROGRADE.
        //}
       
    //}
}
LOCK THROTTLE to 0.0.
circAt().
PRINT "Adding node".
exeMan().
PRINT "Executing node".
