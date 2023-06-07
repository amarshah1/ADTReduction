
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
(assert (or (is-Cons Nil) (= l0 l0)) )
(assert (and (= l3 Nil) (= l2 Nil) (is-Cons l1) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l3 l2) (is-Nil l3) (is-Cons Nil)) )
(check-sat)
