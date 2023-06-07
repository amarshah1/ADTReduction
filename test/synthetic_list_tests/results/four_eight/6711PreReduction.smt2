
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
(assert (and (= l2 Nil) (is-Cons Nil) (= l3 Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l1 l0) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (not (= l3 Nil)) )
(check-sat)
