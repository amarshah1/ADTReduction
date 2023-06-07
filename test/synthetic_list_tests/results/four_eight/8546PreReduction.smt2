
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
(assert (and (= l0 Nil) (is-Cons l1) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons Nil) (= l1 l3)) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (is-Cons l2) (= l3 Nil) (= l0 l0)) )
(assert (not (is-Nil l3)) )
(assert (or (= l2 l3) (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(check-sat)
