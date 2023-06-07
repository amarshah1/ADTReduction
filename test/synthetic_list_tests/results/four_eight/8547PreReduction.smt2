
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
(assert (or (= l1 l0) (= l0 Nil) (is-Nil Nil) (= l1 l3)) )
(assert (= l3 Nil) )
(assert (not (= l1 Nil)) )
(assert (not (is-Cons l0)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l1 Nil) (= l1 Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
