
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
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l3 Nil) (is-Nil l1)) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
