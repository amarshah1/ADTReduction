
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
(assert (and (is-Nil Nil) (= l0 Nil) (= l0 Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Nil l0) (= l1 Nil)) )
(assert (and (= l3 Nil) (= l3 l0)) )
(assert (not (= l3 l0)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(check-sat)
