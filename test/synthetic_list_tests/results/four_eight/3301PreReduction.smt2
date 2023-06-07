
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
(assert (= l3 Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons l0) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l1 Nil) (= l1 l2)) )
(assert (or (= l1 l0) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l2 l3) (is-Nil Nil)) )
(check-sat)
