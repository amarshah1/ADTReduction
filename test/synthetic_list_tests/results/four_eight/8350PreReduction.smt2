
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
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (= l3 l1) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil l3) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(check-sat)
