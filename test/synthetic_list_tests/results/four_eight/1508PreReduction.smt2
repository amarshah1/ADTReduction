
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
(assert (and (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l2 Nil) (is-Cons l2)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (or (= l0 l3) (is-Nil l3) (= l2 l2)) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (= l2 Nil) )
(check-sat)
