
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
(assert (is-Nil l3) )
(assert (and (is-Cons Nil) (= l1 l1) (= l2 Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l3 Nil) (= l1 Nil) (is-Nil l3)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
