
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
(assert (and (= l3 Nil) (is-Cons l2)) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Cons l1) (is-Nil Nil)) )
(assert (and (= l2 l1) (is-Nil l0) (= l3 Nil) (= l3 l1)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l2 l2) (= l2 l3)) )
(check-sat)
