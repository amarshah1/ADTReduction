
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
(assert (and (is-Nil l1) (is-Cons Nil) (is-Cons l2)) )
(assert (not (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l2 Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(check-sat)
