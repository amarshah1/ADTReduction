
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
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l1 l2)) )
(assert (= l3 Nil) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l3 l0)) )
(assert (not (= l3 l1)) )
(check-sat)
