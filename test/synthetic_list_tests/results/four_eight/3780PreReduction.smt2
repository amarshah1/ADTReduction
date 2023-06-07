
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
(assert (not (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Cons Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil Nil) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(check-sat)
