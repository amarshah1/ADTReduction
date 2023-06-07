
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
(assert (= l0 Nil) )
(assert (and (is-Nil l1) (is-Cons l2) (= l3 l1)) )
(assert (not (= l0 l0)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l2 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 l1)) )
(check-sat)
