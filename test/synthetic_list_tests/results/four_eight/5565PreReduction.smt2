
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
(assert (and (is-Cons Nil) (is-Nil l1)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 l1)) )
(assert (= l0 l3) )
(assert (= l1 Nil) )
(assert (or (= l1 l3) (is-Nil Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
