
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
(assert (is-Cons l1) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (and (= l1 Nil) (= l3 l0) (= l2 l1)) )
(assert (not (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(check-sat)
