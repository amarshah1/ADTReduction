
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
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Nil l3)) )
(assert (is-Nil l3) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(check-sat)
