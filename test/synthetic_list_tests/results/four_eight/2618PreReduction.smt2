
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
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (is-Cons l2) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l1 l1) (is-Nil Nil) (= l0 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l3) (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
