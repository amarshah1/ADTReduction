
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
(assert (or (= l2 Nil) (= l1 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 l3) )
(assert (= l0 l3) )
(assert (and (= l3 l3) (is-Cons Nil) (= l3 l3) (= l0 l1)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(check-sat)
