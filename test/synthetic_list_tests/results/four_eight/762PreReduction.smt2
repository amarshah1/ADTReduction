
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
(assert (and (= l2 Nil) (is-Nil l1)) )
(assert (and (= l2 Nil) (= l0 l1) (= l3 Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l3 l3) (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(check-sat)
