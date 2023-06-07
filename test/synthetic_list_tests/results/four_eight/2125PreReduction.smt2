
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
(assert (not (= l2 l1)) )
(assert (not (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil Nil) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(assert (not (= l0 Nil)) )
(check-sat)
