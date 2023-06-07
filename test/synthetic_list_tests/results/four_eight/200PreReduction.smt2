
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
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (not (= l1 Nil)) )
(assert (or (is-Cons l3) (is-Nil l0) (= l1 Nil)) )
(assert (not (= l3 l2)) )
(assert (or (= l1 l0) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l2 l2)) )
(assert (= l3 Nil) )
(check-sat)
