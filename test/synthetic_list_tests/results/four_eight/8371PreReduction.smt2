
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
(assert (is-Nil l2) )
(assert (and (= l2 l1) (is-Cons l2) (= l3 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 l3) (is-Cons Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (is-Cons l0) (is-Cons Nil) (= l0 Nil) (= l2 l1)) )
(check-sat)
