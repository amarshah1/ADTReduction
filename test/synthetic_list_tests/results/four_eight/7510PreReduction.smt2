
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
(assert (= l3 Nil) )
(assert (or (= l2 l2) (= l3 Nil) (= l0 Nil)) )
(assert (or (= l1 l2) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(assert (is-Cons l0) )
(assert (= l2 Nil) )
(check-sat)
