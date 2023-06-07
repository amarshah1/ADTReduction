
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
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (or (= l0 l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (and (= l0 l3) (= l3 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Cons l3) )
(check-sat)
