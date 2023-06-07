
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
(assert (not (= l3 l2)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (= l1 Nil) )
(assert (or (= l1 l1) (= l2 l3)) )
(check-sat)
