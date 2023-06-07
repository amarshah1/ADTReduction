
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
(assert (and (is-Cons Nil) (= l1 Nil) (= l3 Nil) (is-Nil l2)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Cons l1)) )
(assert (or (= l1 l3) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (is-Nil l1) )
(check-sat)
