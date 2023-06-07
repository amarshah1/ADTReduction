
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
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l1 Nil) (= l1 l1)) )
(assert (or (= l3 Nil) (= l0 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (= l0 l0) )
(assert (not (= l3 Nil)) )
(assert (or (is-Nil Nil) (= l3 l0) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 l2)) )
(check-sat)