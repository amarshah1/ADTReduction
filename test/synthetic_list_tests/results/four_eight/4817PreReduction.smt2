
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
(assert (and (= l1 Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l3 l1)) )
(assert (or (= l3 l0) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (or (= l1 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (is-Cons l3) )
(check-sat)
