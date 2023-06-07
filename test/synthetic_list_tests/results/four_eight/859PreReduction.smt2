
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
(assert (or (= l3 l3) (is-Cons l1)) )
(assert (and (= l2 Nil) (= l0 l0)) )
(assert (is-Cons l3) )
(assert (or (= l0 l0) (= l2 Nil) (is-Cons l1) (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 l1) (= l3 Nil)) )
(check-sat)
