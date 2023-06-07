
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
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 l2) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (is-Nil Nil)) )
(assert (not (= l1 l1)) )
(assert (and (= l1 Nil) (= l2 l2) (= l1 l0) (is-Nil l2)) )
(assert (= l1 Nil) )
(check-sat)
