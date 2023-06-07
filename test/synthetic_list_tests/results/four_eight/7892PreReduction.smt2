
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
(assert (and (= l0 Nil) (is-Cons l3) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (or (is-Nil Nil) (is-Nil l1) (is-Nil l2) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Cons l0)) )
(assert (and (= l3 l3) (= l0 l3) (= l1 Nil)) )
(assert (and (= l3 Nil) (= l1 l3)) )
(assert (= l1 Nil) )
(assert (not (is-Nil l0)) )
(check-sat)
