
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
(assert (= l0 l2) )
(assert (not (is-Cons l1)) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (or (= l3 l1) (= l0 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(check-sat)
