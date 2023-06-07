
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l0 Nil) (= l3 l3) (= l3 l2)) )
(assert (and (= l2 l0) (= l0 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)
