
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
(assert (or (is-Nil Nil) (= l3 Nil) (is-Cons l3) (is-Nil l1)) )
(assert (and (= l3 l1) (= l0 l1) (= l0 l3)) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 l2)) )
(check-sat)
