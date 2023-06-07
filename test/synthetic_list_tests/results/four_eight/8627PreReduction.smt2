
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
(assert (not (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (and (is-Cons Nil) (= l1 l2) (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (= l1 l1) )
(assert (or (= l0 l2) (= l1 l1) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l2 l1) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
