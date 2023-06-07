
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
(assert (and (is-Cons l1) (= l3 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (= l3 l1) )
(assert (and (= l3 l3) (is-Cons Nil) (= l2 Nil) (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Nil l0)) )
(assert (is-Cons Nil) )
(check-sat)
