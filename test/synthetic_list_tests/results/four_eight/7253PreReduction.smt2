
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
(assert (= l2 l0) )
(assert (not (is-Nil l1)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l2 l0)) )
(assert (or (is-Nil l3) (is-Cons l0) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l1 l2)) )
(assert (not (= l2 Nil)) )
(check-sat)
