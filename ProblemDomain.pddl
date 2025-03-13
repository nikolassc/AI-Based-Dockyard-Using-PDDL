
(define (problem LimaniProb)
(:domain LimaniDomain)
(:objects
r1 c1 c2 c3 d1 d2 d3 )
(:init
(robot r1) (container c1) (container c2) (container c3) (piers d1) (piers d2) (piers d3)
(located c1 d1) (onTop c3 c1)
(located c2 d2) (clear c2)
(located c3 d1) (clear c3)
(connect d1 d3) (connect d3 d1) (connect d1 d2) (connect d2 d1)
(path d2 d3) (path d3 d2)
(at r1 d2) 
)
(:goal (and
(located c1 d3) (onTop c1 c2) 
(located c2 d3)
(located c3 d3) (clear c3) (clear c1)
(at r1 d1) 
)
)

)