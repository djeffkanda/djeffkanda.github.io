(define (domain robotworld)
  (:requirements :typing)
  (:types gripper room ball)
  (:predicates
    (atRobot ?r - room)
    (at ?b - ball ?r - room)
    (free ?g - gripper)
    (holding ?g - gripper ?b - ball)
  )

  (:action pick
    :parameters (?g - gripper ?b - ball ?r - room)
    :precondition (and (free ?g) (atRobot ?r) (at ?b ?r))
    :effect (and (holding ?g ?b) (not (free ?g)) (not (at ?b ?r)))
  )

  (:action release
    :parameters (?g - gripper ?b - ball ?r - room)
    :precondition (and (holding ?g ?b) (atRobot ?r))
    :effect (and (free ?g) (not (holding ?g ?b)) (at ?b ?r))
  )
  
   (:action move
    :parameters (?from ?to - room)
    :precondition (atRobot ?from)
    :effect (and (not (atRobot ?from)) (atRobot ?to))
  )
)