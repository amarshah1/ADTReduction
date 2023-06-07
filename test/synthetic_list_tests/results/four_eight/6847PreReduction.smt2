
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
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l3 l3) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)