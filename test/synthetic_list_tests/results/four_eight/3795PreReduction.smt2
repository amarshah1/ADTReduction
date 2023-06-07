
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
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (is-Cons l3) )
(assert (= l1 Nil) )
(assert (= l0 l3) )
(assert (or (is-Nil l1) (= l0 Nil) (= l3 l1)) )
(check-sat)
