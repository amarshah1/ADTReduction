
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
(assert (= l2 Nil) )
(assert (and (= l2 Nil) (is-Cons l3) (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (or (is-Nil Nil) (= l2 l2)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l0 Nil)) )
(assert (= l0 l0) )
(assert (is-Cons Nil) )
(assert (not (= l3 l1)) )
(check-sat)
