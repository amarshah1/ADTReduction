
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
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 l3) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l1 l2) (= l3 Nil) (= l3 l2) (= l2 l2)) )
(check-sat)
