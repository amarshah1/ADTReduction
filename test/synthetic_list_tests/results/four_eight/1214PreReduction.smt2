
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
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (= l3 Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Nil Nil) (= l1 l0)) )
(assert (or (is-Nil l1) (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(check-sat)
