
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
(assert (or (= l3 l3) (= l2 l1) (is-Cons Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l0 l3) (is-Cons l3) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (= l3 l3) )
(assert (= l3 Nil) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l0 Nil) (= l3 Nil)) )
(check-sat)
