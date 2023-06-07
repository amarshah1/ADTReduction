
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
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 l2) )
(assert (or (= l0 Nil) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l2)) )
(assert (= l2 l3) )
(check-sat)
