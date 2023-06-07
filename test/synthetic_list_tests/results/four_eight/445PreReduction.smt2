
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
(assert (or (= l3 Nil) (= l0 Nil) (= l3 l3) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l1 l0) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (= l2 l0) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
