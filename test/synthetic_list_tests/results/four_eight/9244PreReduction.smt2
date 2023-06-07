
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
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (= l3 Nil) )
(check-sat)
