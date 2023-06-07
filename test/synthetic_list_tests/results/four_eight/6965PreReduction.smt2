
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
(assert (or (= l1 Nil) (is-Cons Nil) (= l2 l1)) )
(assert (or (= l1 Nil) (is-Nil l3) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (= l0 l1) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l1 l1) (is-Cons l3)) )
(check-sat)
