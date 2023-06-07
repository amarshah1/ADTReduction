
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
(assert (not (= l3 l2)) )
(assert (or (= l2 l2) (= l1 Nil) (is-Nil Nil) (= l2 l1)) )
(assert (= l2 Nil) )
(assert (is-Cons l1) )
(assert (is-Nil l1) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l0 Nil)) )
(check-sat)
