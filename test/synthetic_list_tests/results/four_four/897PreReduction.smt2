
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
(assert (or (= l1 Nil) (is-Nil l3) (= l1 Nil) (= l1 l0)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(check-sat)
