
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
(assert (= l1 Nil) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 l1) (= l0 l1)) )
(assert (= l0 Nil) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l3 l3)) )
(assert (not (is-Cons Nil)) )
(check-sat)