
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
(assert (is-Cons l0) )
(assert (and (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l1 l2) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l1 l2) )
(assert (= l0 l1) )
(assert (or (= l1 Nil) (is-Cons l2) (= l2 l1) (= l3 Nil)) )
(check-sat)
