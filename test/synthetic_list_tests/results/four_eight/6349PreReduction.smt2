
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
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (= l2 Nil)) )
(assert (= l1 l1) )
(assert (not (= l3 Nil)) )
(assert (not (= l1 l1)) )
(assert (not (is-Nil l2)) )
(assert (is-Nil Nil) )
(check-sat)
