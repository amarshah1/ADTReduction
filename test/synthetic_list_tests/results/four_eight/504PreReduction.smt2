
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
(assert (or (is-Cons Nil) (= l1 l0) (= l2 l1) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l3) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l0)) )
(assert (not (= l0 l0)) )
(assert (or (= l3 l3) (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(check-sat)
