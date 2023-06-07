
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
(assert (not (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l1)) )
(assert (or (= l1 Nil) (is-Nil l3)) )
(assert (and (= l0 l2) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Nil l1) )
(check-sat)