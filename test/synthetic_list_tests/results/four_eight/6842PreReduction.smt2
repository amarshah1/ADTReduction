
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
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (is-Cons l1)) )
(assert (is-Nil l0) )
(assert (or (is-Cons l0) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l0 l1)) )
(assert (= l1 l3) )
(check-sat)
