
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
(assert (is-Cons l3) )
(assert (is-Cons l3) )
(assert (and (is-Nil l1) (= l2 l3) (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (and (= l3 l1) (is-Cons Nil) (= l0 l3)) )
(check-sat)
