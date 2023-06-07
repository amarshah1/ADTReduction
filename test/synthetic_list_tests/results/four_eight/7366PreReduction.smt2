
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
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (= l1 l1) (= l1 l1) (= l1 l0)) )
(assert (and (= l3 Nil) (= l3 l2)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Cons l0)) )
(check-sat)
