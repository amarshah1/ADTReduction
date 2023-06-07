
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
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons l3) (= l0 Nil) (= l2 l3) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (= l3 l0) )
(assert (or (= l1 Nil) (is-Nil l2) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l1 l3)) )
(assert (= l3 Nil) )
(check-sat)
