
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
(assert (or (= l1 Nil) (= l0 l3) (= l2 Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l1 l2) (= l3 l3) (is-Cons l3)) )
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l1 l2) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (is-Nil l3)) )
(check-sat)
