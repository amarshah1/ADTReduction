
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
(assert (and (= l3 l2) (= l1 Nil) (= l0 l2) (= l0 Nil)) )
(assert (not (is-Nil l2)) )
(assert (is-Nil l0) )
(assert (= l1 Nil) )
(assert (or (= l2 l1) (is-Cons Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (or (is-Cons l3) (is-Cons Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (= l3 l3) )
(assert (is-Cons l1) )
(check-sat)
