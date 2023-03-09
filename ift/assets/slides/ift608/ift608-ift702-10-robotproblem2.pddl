(define (problem roproblem)
  (:requirements :adl)
  (:domain robotworld)

  (:objects
    left - gripper
    right - gripper
    c1 c2 r1 r2 r3 r4 - room
    b1 b2 b3 b4 b5 - ball
  )

 (:init (atRobot c2) (free left) (free right)
        (at b1 r2) (at b2 r2) (at b3 r2) (at b4 r3) (at b5 r3)
 )
 (:goal (forall (?x - ball) (at ?x r4)))
 )
