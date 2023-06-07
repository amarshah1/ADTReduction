
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
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (not (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l3)) )
(assert (or (= l1 Nil) (is-Nil l2) (= l3 l1) (= l3 l3)) )
(check-sat)
