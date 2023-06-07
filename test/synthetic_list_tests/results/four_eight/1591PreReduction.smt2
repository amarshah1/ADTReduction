
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
(assert (and (= l1 l3) (= l3 l3) (is-Nil l2) (= l2 Nil)) )
(assert (not (= l1 l2)) )
(assert (is-Cons l0) )
(assert (and (is-Cons l1) (= l0 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (is-Nil l2) )
(check-sat)
