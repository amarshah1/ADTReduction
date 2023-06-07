
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
(assert (and (is-Nil Nil) (is-Nil l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l1 l3) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 l3) )
(assert (not (= l3 l1)) )
(check-sat)
