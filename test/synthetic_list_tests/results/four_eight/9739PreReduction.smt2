
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
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons l1) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l2 Nil) (= l3 l2)) )
(assert (and (is-Nil Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (or (= l0 l1) (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(check-sat)
