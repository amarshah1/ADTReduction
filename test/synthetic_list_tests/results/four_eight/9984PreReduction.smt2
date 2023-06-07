
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
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l0) (is-Cons l2) (= l0 l1)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Nil l1) (= l1 Nil)) )
(assert (or (= l3 l3) (= l1 Nil) (is-Cons l3)) )
(check-sat)
