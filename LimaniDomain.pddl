
(define (domain LimaniDomain) 
(:requirements :strips )

(:predicates
(robot ?r)
(container ?c)
(piers ?d)
(connect ?pierA ?pierB)
(path ?pierA ?pierB)
(at ?robot1 ?pierA)
(located ?containerA ?pierA)
(onTop ?containerA ?containerB) ; containerA is on top of containerB
(clear ?containerA)
)

(:action MoveRobot 
:parameters (?r1 ?dx ?dy)
:precondition
(and (robot ?r1) (piers ?dx) (piers ?dy) (at ?r1 ?dx) (or (connect ?dx ?dy) (path ?dx ?dy)) )
:effect
(and (at ?r1 ?dy) (not (at ?r1 ?dx)))
)

(:action MoveContainerToConnectedPiers 
:parameters (?r1 ?dx ?dy ?c)
:precondition
(and (robot ?r1) (container ?c) (piers ?dx) (piers ?dy) (at ?r1 ?dx) (located ?c ?dx) (clear ?c) (connect ?dx ?dy) )
:effect
(and (at ?r1 ?dy) (located ?c ?dy) (clear ?c) (not (located ?c ?dx)) (not (at ?r1 ?dx)))
)

(:action MoveContainerToDisconnectedPiers 
:parameters (?r1 ?dx ?dz ?c)
:precondition
(and (robot ?r1) (container ?c) (piers ?dx) (piers ?dz) (at ?r1 ?dx) (located ?c ?dx) (clear ?c) (path ?dx ?dz) (not (connect ?dx ?dz)) )
:effect
(and (at ?r1 ?dz) (located ?c ?dz) (clear ?c) (not (located ?c ?dx)) (not (at ?r1 ?dx)))
)

(:action MoveContainerOnContainer 
:parameters (?r1 ?c1 ?c2 ?dx)
:precondition
(and (robot ?r1) (container ?c1) (container ?c2) (piers ?dx) (at ?r1 ?dx) (located ?c1 ?dx) (located ?c2 ?dx) (clear ?c1) (clear ?c2) )
:effect
(and (onTop ?c1 ?c2) (not (clear ?c2)) )
)

(:action MoveContainerFromTopToPier 
:parameters (?r1 ?c ?cTop ?dx)
:precondition
(and (robot ?r1) (container ?c) (container ?cTop) (piers ?dx) (at ?r1 ?dx) (located ?c ?dx) (onTop ?cTop ?c) (clear ?cTop) )
:effect
(and (not (onTop ?cTop ?c)) (clear ?c) (located ?cTop ?dx) )
)

)