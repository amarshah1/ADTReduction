
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
(assert (= l0 Nil) )
(assert (and (is-Cons l1) (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Nil l3) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l2) (= l3 l3) (is-Cons Nil) (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l2) (= l0 Nil) (= l3 Nil) (is-Cons l3)) )
(assert (is-Cons l0) )
(check-sat)
