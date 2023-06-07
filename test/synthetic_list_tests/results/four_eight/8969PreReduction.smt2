
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
(assert (= l3 Nil) )
(assert (not (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (or (is-Nil l2) (= l1 l1) (= l3 Nil) (= l3 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(check-sat)
