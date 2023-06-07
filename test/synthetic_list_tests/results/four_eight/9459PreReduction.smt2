
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
(assert (not (is-Cons l2)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l2 l2)) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Nil l1)) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(check-sat)
