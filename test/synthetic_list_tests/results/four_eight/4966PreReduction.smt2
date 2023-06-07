
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
(assert (= l2 l2) )
(assert (or (= l1 l1) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Nil l3) (= l3 Nil)) )
(check-sat)
