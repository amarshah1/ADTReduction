
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
(assert (is-Nil l1) )
(assert (or (= l1 Nil) (= l2 Nil) (is-Nil l0)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 l3) (= l1 Nil) (is-Nil l3) (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Nil l1)) )
(assert (and (= l0 l3) (is-Cons l0) (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(check-sat)
