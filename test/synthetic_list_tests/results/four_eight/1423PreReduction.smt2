
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
(assert (not (= l0 l3)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Nil l1) (= l3 l2)) )
(assert (is-Cons l2) )
(assert (and (= l3 l0) (= l1 Nil) (is-Nil l3) (= l1 l3)) )
(assert (and (= l3 l2) (is-Cons Nil) (= l2 Nil) (= l1 l1)) )
(check-sat)
