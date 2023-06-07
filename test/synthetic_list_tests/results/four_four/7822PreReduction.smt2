
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
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l0 l1) (= l0 Nil) (is-Cons l3) (= l1 l3)) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (is-Nil l1) (is-Nil Nil) (= l3 Nil)) )
(check-sat)
