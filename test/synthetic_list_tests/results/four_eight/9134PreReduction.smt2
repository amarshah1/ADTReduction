
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
(assert (and (is-Nil l3) (is-Cons Nil) (= l1 l0) (is-Nil l1)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(check-sat)
