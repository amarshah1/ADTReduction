
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
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Nil l3) (= l3 Nil) (= l2 l2)) )
(assert (= l2 Nil) )
(assert (and (= l1 Nil) (= l1 Nil)) )
(assert (or (= l1 l0) (= l2 Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(check-sat)
