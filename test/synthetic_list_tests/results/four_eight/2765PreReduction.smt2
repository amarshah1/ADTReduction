
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
(assert (and (= l0 Nil) (= l3 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (or (= l1 l3) (= l1 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil l3) (is-Cons l2) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
