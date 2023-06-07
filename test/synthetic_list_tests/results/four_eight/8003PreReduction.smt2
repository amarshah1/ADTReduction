
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
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l3 Nil) (= l0 l2)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (= l0 l3) )
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
