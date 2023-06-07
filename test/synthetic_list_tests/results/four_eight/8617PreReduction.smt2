
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
(assert (not (= l0 Nil)) )
(assert (and (= l2 l1) (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l1 l2)) )
(assert (= l1 Nil) )
(check-sat)