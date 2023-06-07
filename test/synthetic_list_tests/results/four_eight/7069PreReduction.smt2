
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
(assert (and (= l2 l3) (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (= l1 l3) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (not (= l3 Nil)) )
(assert (= l0 l2) )
(assert (or (= l1 l0) (= l3 l0) (= l1 l2) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
