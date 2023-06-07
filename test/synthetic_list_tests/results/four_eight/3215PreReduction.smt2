
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
(assert (or (is-Nil l1) (= l1 Nil) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l1 l1) (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (= l3 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 l0) (= l3 Nil) (= l3 l1)) )
(assert (or (= l3 l2) (= l3 l0) (is-Cons Nil)) )
(check-sat)
