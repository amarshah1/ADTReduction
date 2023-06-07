
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
(assert (is-Nil l2) )
(assert (or (= l2 Nil) (is-Nil l2) (is-Cons Nil) (= l3 l3)) )
(assert (not (= l1 Nil)) )
(assert (or (= l0 Nil) (= l3 l3)) )
(check-sat)
