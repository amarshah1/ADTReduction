
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
(assert (is-Nil l1) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l1) (= l1 Nil) (= l0 l0)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(check-sat)
