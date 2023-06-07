
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
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 l1)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 l1) (is-Cons l2)) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(check-sat)
