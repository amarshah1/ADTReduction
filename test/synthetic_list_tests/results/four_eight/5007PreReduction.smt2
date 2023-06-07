
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
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (is-Nil l0)) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Cons l3) )
(assert (and (= l2 l3) (= l1 Nil) (is-Nil l0) (is-Nil Nil)) )
(assert (= l1 Nil) )
(check-sat)
