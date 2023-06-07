
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
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l3 l1)) )
(assert (= l1 Nil) )
(assert (= l2 Nil) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l3 l0)) )
(check-sat)
