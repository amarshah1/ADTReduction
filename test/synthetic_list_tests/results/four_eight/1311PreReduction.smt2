
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
(assert (or (= l3 l2) (= l3 Nil) (= l0 Nil)) )
(assert (not (is-Nil l2)) )
(assert (is-Nil l3) )
(assert (or (= l0 l2) (= l2 Nil)) )
(assert (or (= l0 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Cons l1) (= l1 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l2 l3) (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
