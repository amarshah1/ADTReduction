
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
(assert (= l1 l2) )
(assert (= l3 Nil) )
(assert (= l1 Nil) )
(assert (not (= l2 Nil)) )
(assert (or (= l2 Nil) (is-Nil l3) (= l0 Nil)) )
(assert (= l2 l0) )
(assert (or (is-Cons Nil) (= l2 l2) (= l3 l3) (is-Cons Nil)) )
(assert (is-Nil l3) )
(check-sat)
