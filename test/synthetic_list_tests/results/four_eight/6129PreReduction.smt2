
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
(assert (= l1 l0) )
(assert (or (= l3 l2) (is-Cons Nil) (= l3 Nil) (= l1 l1)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (or (= l1 Nil) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(check-sat)
