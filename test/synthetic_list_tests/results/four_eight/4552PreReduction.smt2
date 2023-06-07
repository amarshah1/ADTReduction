
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
(assert (= l1 Nil) )
(assert (and (= l3 l3) (= l1 l1) (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Nil l0) (is-Cons l3) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
