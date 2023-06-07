
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
(assert (and (= l2 Nil) (= l0 Nil) (= l3 l0)) )
(assert (or (= l0 l3) (is-Cons Nil)) )
(assert (or (is-Cons l3) (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l0 l1) (= l3 Nil)) )
(assert (and (is-Nil l1) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 l0)) )
(assert (is-Nil l3) )
(check-sat)
