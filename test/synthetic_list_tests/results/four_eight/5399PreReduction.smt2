
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
(assert (= l2 l0) )
(assert (is-Cons l1) )
(assert (or (= l2 l0) (= l3 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (or (= l1 Nil) (= l3 l0)) )
(assert (not (is-Nil l1)) )
(check-sat)
