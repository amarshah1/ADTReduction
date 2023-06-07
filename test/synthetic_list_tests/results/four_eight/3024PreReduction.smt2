
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
(assert (= l2 l1) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Cons l3) (= l2 Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (= l1 l3) )
(check-sat)
