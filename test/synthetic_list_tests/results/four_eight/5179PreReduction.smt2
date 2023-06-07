
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
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 l3)) )
(assert (not (= l3 l2)) )
(assert (or (= l1 Nil) (is-Cons l0) (is-Nil l3)) )
(assert (= l2 Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (or (= l2 Nil) (= l0 l2) (= l3 l1) (= l1 Nil)) )
(assert (and (is-Nil l2) (is-Nil l3) (= l1 Nil) (= l1 l3)) )
(check-sat)
