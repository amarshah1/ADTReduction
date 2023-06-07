
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
(assert (not (= l1 l2)) )
(assert (not (= l1 l0)) )
(assert (= l0 l3) )
(assert (= l0 Nil) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 Nil) (is-Nil l2)) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(check-sat)
