
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
(assert (or (is-Cons Nil) (is-Nil l3) (is-Nil Nil) (= l2 l2)) )
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(assert (is-Nil l2) )
(assert (not (= l3 l1)) )
(assert (is-Cons l1) )
(assert (and (is-Cons Nil) (is-Nil l3)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons l2) (is-Nil l1)) )
(check-sat)
