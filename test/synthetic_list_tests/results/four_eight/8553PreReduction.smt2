
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
(assert (or (= l2 Nil) (= l0 Nil) (is-Nil Nil) (= l2 l3)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (= l1 Nil) )
(assert (= l3 l3) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)