
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
(assert (and (= l1 Nil) (= l3 l3) (= l1 l1)) )
(assert (or (is-Cons l1) (is-Cons Nil) (= l0 l2)) )
(assert (not (is-Nil l2)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
