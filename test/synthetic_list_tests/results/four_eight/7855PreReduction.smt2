
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
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 l1) (= l3 Nil)) )
(assert (not (= l1 l1)) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
