
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
(assert (and (= l1 l1) (= l0 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l3 l0)) )
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 l2) (= l1 l1) (is-Cons l1)) )
(assert (and (= l2 Nil) (= l2 Nil)) )
(check-sat)
