
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
(assert (and (= l2 l2) (= l3 Nil) (= l2 Nil) (= l3 l1)) )
(assert (or (= l0 l3) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil l0)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
