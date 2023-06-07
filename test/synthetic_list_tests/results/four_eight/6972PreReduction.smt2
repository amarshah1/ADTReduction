
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
(assert (and (is-Nil Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil)) )
(check-sat)
