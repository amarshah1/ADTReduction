
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
(assert (or (is-Cons Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 l3) )
(assert (not (= l0 l2)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(check-sat)
