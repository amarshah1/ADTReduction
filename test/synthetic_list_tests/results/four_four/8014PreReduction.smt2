
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
(assert (not (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (or (is-Cons l3) (= l0 l3) (= l2 l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
