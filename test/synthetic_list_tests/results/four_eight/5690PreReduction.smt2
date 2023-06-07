
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
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (not (= l3 l1)) )
(assert (and (is-Cons l3) (is-Nil Nil) (is-Nil l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (is-Cons l1) (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
