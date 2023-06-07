
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
(assert (= l0 l2) )
(assert (or (= l2 l0) (= l1 Nil) (= l1 l3) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l3) (= l1 Nil) (= l1 Nil)) )
(assert (or (is-Cons l3) (= l2 l0)) )
(assert (= l3 Nil) )
(assert (or (= l2 l2) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
