
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
(assert (is-Cons l2) )
(assert (= l1 Nil) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l1 l1) (is-Cons l2) (= l1 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)
