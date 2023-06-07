
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
(assert (is-Cons l2) )
(assert (and (= l2 l1) (is-Cons l3) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 Nil) (is-Cons l0)) )
(assert (is-Cons l2) )
(assert (= l0 Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil l1) (= l2 Nil)) )
(assert (and (= l3 l3) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)