
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
(assert (and (is-Nil l0) (is-Nil Nil) (= l3 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l1 l1)) )
(assert (or (is-Nil l3) (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l3 l0)) )
(assert (= l0 Nil) )
(check-sat)
