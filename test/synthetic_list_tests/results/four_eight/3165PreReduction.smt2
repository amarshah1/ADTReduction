
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
(assert (or (= l0 l3) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 l0) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l1 l1) )
(assert (and (= l0 l1) (= l3 Nil)) )
(check-sat)
