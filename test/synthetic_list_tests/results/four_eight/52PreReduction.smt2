
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
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (or (is-Cons l3) (= l2 Nil) (= l0 l0) (is-Cons l1)) )
(assert (not (= l1 l3)) )
(check-sat)
