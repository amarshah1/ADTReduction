
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
(assert (= l2 l0) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l2 l0) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l0 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
