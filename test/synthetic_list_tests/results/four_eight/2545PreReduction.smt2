
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
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l1 l1)) )
(assert (is-Nil l3) )
(assert (not (is-Cons Nil)) )
(assert (and (= l1 l0) (= l3 Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
