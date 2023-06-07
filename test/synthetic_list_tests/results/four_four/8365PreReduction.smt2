
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
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 l3) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(check-sat)
