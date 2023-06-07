
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
(assert (and (= l1 Nil) (is-Cons l0) (is-Nil Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (= l1 l2) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
