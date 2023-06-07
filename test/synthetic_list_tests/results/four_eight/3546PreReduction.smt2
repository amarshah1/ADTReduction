
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
(assert (or (is-Nil Nil) (= l2 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l3 Nil) (= l2 l0) (is-Cons Nil)) )
(assert (and (= l3 l3) (is-Cons Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(check-sat)
