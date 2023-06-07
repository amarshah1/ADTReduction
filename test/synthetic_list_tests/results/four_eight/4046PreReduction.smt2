
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
(assert (not (= l1 l3)) )
(assert (not (= l2 l2)) )
(assert (is-Nil l0) )
(assert (or (= l1 l1) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l1 l3) (= l2 Nil)) )
(check-sat)
