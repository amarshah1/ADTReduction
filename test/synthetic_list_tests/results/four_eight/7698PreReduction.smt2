
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
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l2 l0)) )
(assert (or (is-Cons l0) (= l1 Nil) (= l2 l3) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l1 Nil) (is-Cons l1)) )
(check-sat)
