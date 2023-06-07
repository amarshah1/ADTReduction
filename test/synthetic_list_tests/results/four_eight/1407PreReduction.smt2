
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
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil l3) (= l2 l2)) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (= l3 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (= l2 Nil) )
(assert (not (= l2 l2)) )
(assert (is-Cons Nil) )
(check-sat)
