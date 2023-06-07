
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
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l3 l2) (= l3 Nil)) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l1 l1)) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (= l3 l0)) )
(check-sat)
