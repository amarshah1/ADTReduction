
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
(assert (or (= l0 l0) (is-Cons Nil) (= l1 Nil) (= l2 l0)) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Nil l2) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l1 l1)) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l2 l2)) )
(assert (= l2 Nil) )
(assert (= l2 Nil) )
(check-sat)
