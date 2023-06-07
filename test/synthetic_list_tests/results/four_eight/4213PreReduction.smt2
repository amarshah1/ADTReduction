
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
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (= l3 l3) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (= l3 l1) (= l1 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (= l0 l3) )
(check-sat)
